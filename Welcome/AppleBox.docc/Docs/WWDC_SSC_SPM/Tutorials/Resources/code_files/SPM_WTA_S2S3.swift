









@GuideBook(title: "MyApp", icon: title.png, background: titleBackground.png, firstFile: App.swift) {
    @WelcomeMessage(title: "Hello") {
        0
    }
    @Guide {
        @Step(title: "Introduction") {
            @ContentAndMedia {
                1
                
            }
            
            @Task(type: walkthrough, title: "Learn App", id: "Learn_App", file: App.swift) {
                2
                
                @Page(id: "1.1", title: "This is App") {
                    3
                }
            }
        }
    }
}