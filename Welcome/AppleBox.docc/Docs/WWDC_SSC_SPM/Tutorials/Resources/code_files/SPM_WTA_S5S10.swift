








@GuideBook(title: "MyApp", icon: title.png, background: titleBackground.png, firstFile: App.swift) {
    @WelcomeMessage(title: "Hello") {
        0
    }
    @Guide {
        @Step(title: "Introduction") {
            @ContentAndMedia {
                1
                
                2

                @GuideButton(type: walkthrough, title: "Start Walkthrough", description: "A description for button")
            }
            
            @Task(type: walkthrough, title: "Learn App", id: "Learn_App", file: App.swift) {
                3
                
                @Page(id: "1.1", title: "This is App") {
                    4
                }
            }
        }
    }
}