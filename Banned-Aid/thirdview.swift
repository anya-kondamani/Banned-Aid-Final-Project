//
//  thirdview.swift
//  Banned-Aid
//
//  Created by anya kondamani on 7/21/23.
//
import SwiftUI

struct BookInfo {
    let title: String
    let author: String
    let additionalInfo: String
}

struct thirdview: View {
    @State private var selectedBook: String?
    
    let books: [BookInfo] = [
        BookInfo(title: "Fahrenheit 451", author: "Ray Bradbury", additionalInfo: "Banned: Montgomery County, Texas\n\n Reason: Censor the graphic content within the novel.\n\n Link: https://www.amazon.com/Fahrenheit-451-Ray-Bradbury/dp/1451673310/ref=sr_1_1?crid=3RBX5QI2BA33Q&keywords=farenheight+451&qid=1689899059&sprefix=faren%2Caps%2C98&sr=8-1"),
        BookInfo(title: "Animal Farm", author: "George Orwell", additionalInfo: "Banned: China and Cuba,\n\n Reason: Communist Countries that did not want their government to be criticized.\n\n Link: https://www.amazon.com/Animal-Farm-George-Orwell/dp/0451526341/ref=sr_1_1?crid=83UNHUFAA5BX&keywords=animal+farm&qid=1689898966&sprefix=animal+farm%2Caps%2C100&sr=8-1"),
        BookInfo(title: "Catcher in the Rye", author: "J.D. Salinger", additionalInfo: "Banned: Tulsa, Oklahoma and other states within the United States\n\n Reason: Claimed the book had excess vulgar language, sexual scenes, things concerning moral issues, excessive violence, and anything dealing with the occult\n\n Link: https://www.amazon.com/Catcher-Rye-J-D-Salinger/dp/0316769177/ref=sr_1_1?crid=1XCMJH2NNG6T4&keywords=catcher+in+the+rye&qid=1689898937&sprefix=catcher+in+the+rye%2Caps%2C151&sr=8-1"),
        BookInfo(title: "Looking For Alaska", author: "John Green", additionalInfo: "Banned: Sumner County, Tennessee\n\n Reason: Claimed the book was sexually explicit and had LGBTQIA+ content.\n\n Link: https://www.amazon.com/Looking-Alaska-John-Green/dp/0142402516/ref=sr_1_1?crid=3638X859KXAFK&keywords=looking+for+alaska+john+green&qid=1689898778&sprefix=lookign+for+%2Caps%2C128&sr=8-1"),
        BookInfo(title: "Lajja", author: "Taslima Nasrin", additionalInfo: "Banned: Sri Lanka and Bangladesh\n\n Reasons: Muslim fundamentalists have issued a death sentence against the author.\n\n Link: https://www.amazon.com/Lajja-Taslima-Nasrin/dp/0143419218"),
        BookInfo(title: "Jane Eyre", author: "Charlotte Bronte", additionalInfo: "Banned: China\n\n Reason: The CCP deemed the novel was corrupting the youth.\n\n Link: https://www.amazon.com/Jane-Penguin-Classics-Charlotte-Bront%C3%AB/dp/0141441143"),
        BookInfo(title: "Alice's Adventures in Wonderland", author: "Lewis Carroll", additionalInfo: "Banned: China\n\n Reason: Believed animals acting like humans was an insult.\n\n Link: https://www.amazon.com/Alice-Wonderland-Original-Complete-Illustrations/dp/B0948LPG76/ref=sr_1_1_sspa?keywords=Alice+in+Wonderland&qid=1689898186&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1")
    ]
    var body: some View {
        NavigationView {
            VStack(spacing: 60) {
                Text("Select a Book:")
                    .font(.headline)
                    .padding(.top, 30)
                
                ForEach(books, id: \.title) { book in
                    NavigationLink(
                        destination: BookDetail(book: book),
                        tag: book.title,
                        selection: $selectedBook
                    ) {
                        Text("\(book.title) by \(book.author)")
                    }
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Books")
        }
    }
}

struct BookDetail: View {
    var book: BookInfo
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(book.title)
                .font(.title)
                .fontWeight(.bold)
            Text("Author: \(book.author)")
                .font(.headline)
            
            // Use `Text` with `Link` modifier to make the links clickable
            Text(book.additionalInfo)
                .font(.body)
                .lineSpacing(5)
                .foregroundColor(.blue)
                .multilineTextAlignment(.leading)
                .onTapGesture {
                    if let url = URL(string: book.additionalInfo) {
                        UIApplication.shared.open(url)
                    }
                }
            
            Spacer()
        }
        .padding()
    }
}

struct thirdview_Previews: PreviewProvider {
    static var previews: some View {
        thirdview()
    }
}
