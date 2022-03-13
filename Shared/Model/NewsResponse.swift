//
//  NewsResponse.swift
//  NewsApp (iOS)
//
//  Created by Shaikenov Abay on 11.03.2022.
//


import Foundation

// MARK: - Welcome
struct NewsResponse: Codable {
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable, Identifiable {
    let id = UUID()
    let author: String?
    let url: String?
    let source, title, articleDescription: String?
    let image: String?
    let date: Date?

    enum CodingKeys: String, CodingKey {
        case author, url, source, title
        case articleDescription = "description"
        case image, date
    }
}


//"author": null,
//            "url": "https://www.reuters.com/business/biden-call-an-end-normal-trade-relations-with-russia-increased-tariffs-russian-2022-03-11/",
//            "source": "Reuters",
//            "title": "U.S., G7 allies may strip Russia of 'most favored nation' status - Reuters.com",
//            "description": "The United States, together with the Group of Seven nations and the European Union, will move on Friday to revoke Russia's \"most favored nation\" status over its invasion of Ukraine, multiple people familiar with the situation told Reuters.",
//            "image": "https://www.reuters.com/resizer/OAsM24fpzIQBcWCpbGoQAj1HatE=/1200x628/smart/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/55MAUTHCLVIZZJTDWQZ3KGEMXI.jpg",
//            "date": "2022-03-11T12:36:00Z"




extension Article {
    
    static var dummyData: Article {
        .init(author: nil,
              url: "https://www.reuters.com/business/biden-call-an-end-normal-trade-relations-with-russia-increased-tariffs-russian-2022-03-11/",
              source: "Reuters",
              title: "U.S., G7 allies may strip Russia of 'most favored nation' status - Reuters.com",
              articleDescription: "U.S., G7 allies may strip Russia of 'most favored nation' status - Reuters.com",
              image: "https://www.reuters.com/resizer/OAsM24fpzIQBcWCpbGoQAj1HatE=/1200x628/smart/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/55MAUTHCLVIZZJTDWQZ3KGEMXI.jpg",
              date: Date())
        
    }
}
