//
//  ContentView.swift
//  image bundle
//
//  Created by Wanhar on 06/08/20.
//

import SwiftUI
import SwiftSVG


struct ContentView: View {
    
    func getPath(type:String) -> String {
        let bundlePath = Bundle.main.path(forResource: "gambar", ofType: type)
        print("path ->> \(bundlePath)")
        return bundlePath ?? ""
    }
    
    func getURL() -> URL {
        let bundlePath = Bundle.main.url(forResource: "gambar", withExtension: "svg")
        print("url ->> \(bundlePath)")
        return bundlePath!
    }
    
    
    var body: some View {
        VStack{
            Image(uiImage: UIImage(contentsOfFile: getPath(type: "jpg"))!)
                .resizable()
                .frame(width: 100, height: 100)
            Text("Image.JPG")
            Divider()
            SVGImage(url: getURL())
                .frame(width: 100, height: 100)
            Text("Image.SVG")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
