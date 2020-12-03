//
//  Constants.swift
//  youtube-demo
//
//  Created by Roger Yuen on 2020/12/2.
//

import Foundation

struct Constansts {
    static var API_KEY = ""
    static var PLAYLIST_ID = "UU2D6eRvCeMtcF5OGHf1-trw"
    static var API_URL = "  https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constansts.PLAYLIST_ID)&key=\(Constansts.API_KEY)"
}
