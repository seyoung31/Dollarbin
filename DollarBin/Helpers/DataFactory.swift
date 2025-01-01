//
//  DataFactory.swift
//  DollarBin
//
//  Created by Seyoung on 2022/04/11.
//

import Foundation
import UIKit

//Recycling centers near me
struct Recyclingcenters {
    static var names = ["Hallim2-ri", "Gonae-ri", "Hagwi-ri", "Aewol-ri", "Gwakji-ri", "Sineom-ri", "Haga-ri", "Hado-ri", "Jocheon-ri", "Wasan-ri"]
    static var address = ["12, Hallimnam-gil, Hallim-eup, Jeju-si, Jeju-do, Republic of Korea",
                          "14, Gonae-ro, Aewol-eup, Jeju-si, Jeju-do, Republic of Korea",
                          "16, Hagwidongnam 3-gil, Aewol-eup, Jeju-si, Jeju-do,Republic of Korea",
                          "7, Aewolhaean-ro, Aewol-eup, Jeju-si, Jeju-do, Republic of Korea",
                          "13, Gwakji 3-gil, Aewol-eup, Jeju-si, Jeju-do, Republic of Korea",
                          "17, Jungeom 3-gil, Aewol-eup, Jeju-si, Jeju-do, Republic of Korea",
                          "144, Gohasang-ro, Aewol-eup, Jeju-si, Jeju-do, Republic of Korea",
                          "68, Munjuran-ro, Gujwa-eup, Jeju-si, Jeju-do, Republic of Korea",
                          "5-5, Jocheon 18-gil, Jocheon-eup, Jeju-si, Jeju-do, Republic of Korea",
                          "924, Jungsangandong-ro, Jocheon-eup, Jeju-si, Jeju-do, Republic of Korea",]
    static var opentime = ["6:00", "6:00", "6:00", "6:00", "6:00", "6:00", "6:00", "6:00", "4:00", "6:00"]
    static var closetime = ["24:00", "24:00", "24:00", "24:00", "24:00", "24:00", "24:00", "24:00", "13:00", "24:00"]
}

// Donation organizations
struct DonationOrg {
    static var orgtype = ["Cosmetics Brand","Organization","Upcycle Brand", "Upcycle Brand", "Upcycle Startup", "Recycled Polyester Brand", "Sanitary Brand"]
    static var names = ["Innisfree","Jeju Olle Foundation","Pleats Mama", "Sotsot Rebirth", "JeCLEAN", "Regen Jeju", "Cocori Jeju"]
    static var Description = ["Innisfree has focused on delivering healthy beauty based on ingredients from the pristine nature of Jeju Island.","Jeju Olle Foundation is a non-profit organization which develops and maintains Jeju Olle Trail, a long distance walking trail in Jeju Island.","Korean recycling brand Pleats Mama has worked to manufacture Korea’s first recycled products made from 100% Jeju PET bottles.", "Rebirth brings new value to life by extending the lifespan of good clothing.", "For the sustainable environment of jeju, it has been conducting an eco-friendly ESG campaign by upcycling old bedding products.", "Regen® Jeju is 100% recycled polyester made from the discarded transparent PET bottles from Jeju island, a UNESCO World Heritage site.", "Cocori Jeju makes sanitary products including detergents and hand soap using Jeju tangerines"]
    static let pictures: [UIImage] = [UIImage(named:"innisfree.jpg")!, UIImage(named:"jejuolle.jpg")!,UIImage(named:"pleatsmama.jpg")!, UIImage(named:"sotsotrebirth.jpg")!, UIImage(named:"jeclean.jpg")!, UIImage(named:"regen.jpg")!, UIImage(named:"cocori.jpg")!]
    static let urls = ["http://www.apgroupcsr.com/en/activity/brand/activity_brand_innisfree_html.do","https://www.jejuolle.org/office/eng/default.asp","https://en.pleatsmama.com/", "https://www.kolonsport.com/Event/223253", "http://www.jeclean.com/", "https://blog.hyosungtnc.com/regen-jeju/", "http://cocori.kr/"]
}

// News
struct News {
    static var pictures: [UIImage] = [UIImage(named:"news1.jpg")!,
                                      UIImage(named:"news2.jpg")!,
                                      UIImage(named:"news3.jpg")!,
                                      UIImage(named:"news4.jpg")!,
                                      UIImage(named:"news5.jpg")!,
                                      UIImage(named:"news6.jpg")!,
                                      UIImage(named:"news7.jpg")!]
    static var title = ["[Journalism Internship] Pandemic won’t stop these clubs from cleaning Jeju",
                        "[VIDEO] Jeju’s plastic bottle waste is reborn into trendy bags",
                        "Korea's shores have more plastic than most, much goes to ocean",
                        "Jeju’s garbage is piling up on land, in the sea: Visitors are part of the problem along with poor infrastructure",
                        "Garbage scow",
                        "Trashy times",
                        "[Sponsored Report] Innisfree enlists army of volunteers to preserve island’s environment"]
    static var urls = ["https://koreajoongangdaily.joins.com/2021/12/02/englishStudy/journalism%20internship/KISJEJU2021-Pandemic-wont-stop-these-clubs-from-cleaning-Jeju/20211202152524782.html?detailWord=",
                       "https://koreajoongangdaily.joins.com/2021/07/14/imageNews/videoNews/Pleats-Mama-plastic-bottle/20210714182200405.html?detailWord=",
                       "https://koreajoongangdaily.joins.com/2021/06/23/national/socialAffairs/plastic-wastes-korea-200000tons/20210623172900341.html?detailWord=",
                       "https://koreajoongangdaily.joins.com/2019/07/21/features/Jejus-garbage-is-piling-up-on-land-in-the-sea-Visitors-are-part-of-the-problem-along-with-poor-infrastructure/3065770.html?detailWord=",
                       "https://koreajoongangdaily.joins.com/2019/04/15/economy/Garbage-scow/3061900.html?detailWord=",
                       "https://koreajoongangdaily.joins.com/2019/01/18/socialAffairs/Trashy-times/3058356.html?detailWord=",
                       "https://koreajoongangdaily.joins.com/2018/06/26/nationalGuestReports/Sponsored-Report-Innisfree-enlists-army-of-volunteers-to-preserve-islands-environment/3049847.html?detailWord="]
}
