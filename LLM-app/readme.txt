

Coding with AI Studio:

https://aistudio.google.com/


PROMPT 1:

We want to write an iOS app in swift latest release 5.9 or above. The app name is "LLM-app". The app functionality is as follows:
- create AppData.swift file with the Member class with names {Euge, Soo, Geo}, each member has the following properties: {hair color, eye color, theme color}. Possible hair colors: {gray, brown, black}. Possible eyes colors: {black, green, blue, brown}. Possible theme colors: {pink, cyan, brown, violet}.
- Assets are in a folder called pics with 4 images: {euge.jpg, geo.jpg, soo.jpg, sriracha-256.jpg} these are the picture of each member and the last one is the splash screen image.
- the app start with SplashScreenView.swift: display the splash screen image, with a enlarge effect from 50% of the screen to 75%, and make it last 1 second.
- after the splash screen, display MemberListView.swift of list of members from AppData. Each member has an icon with their picture and a theme color associated with each member. You can click on any of the names and it takes you to a new view: memberView.
- MemberListView has a add member button where you can add a new member.
- MemberView.swift shows the properties of each member: the color of eyes, hair and theme. In MemberView you can change the color of hair, eyes and theme with options from AppData.
- AddMemberView.swift allows you to add a nem member
- Divide the project into files and folders. Do not use a storyboard, instead code the views directly.
Now write the app code, with at least these files: AppData.swift, SplashScreenView.swift, MemberListView.swift, MemberView.swift, AddMemberView.swift.

The initial project code is here:
"""
File name: LLM-appApp.swift
import SwiftUI

@main
struct LLM-appApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

File name: AppData.swift
import Foundation

File name: gemini-family/gemini-family/ContentView.swift
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


File name: ContentView.swift
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


File name: SplashScreenView.swift
import SwiftUI

struct SplashScreen: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    SplashScreen()
}


File name: MemberListView.swift
import SwiftUI

struct MemberListView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    MemberListView()
}


File name: MemberView.swift
import SwiftUI

struct MemberView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    MemberView()
}

File name: AddMemberView.swift
import SwiftUI

struct AddMemberView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    AddMemberView()
}
"""
Now write the entire working app code modifying the code above











RESAULTS

2 errors:

Asked to fix with prompts:

1:

please help to fix this issue: generate MemberView.swift #Preview {} and also link to the members in struct AppData from AppData.Swift

OK WORKS

2:

In SplashScreenView.swift add the NavigationLink to MemberListView


OK WORKS


