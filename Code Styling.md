#  Code Styling Guide

//MARK: Imports
import (dependency)

//MARK: Variables
var (name) {
    Code
}

//MARK: Code
struct MainView: View {                                            - Main Struct: No Spacing After
    var body: some View {                                            - Main Body: No Spacing After
        Stack {                                                     - Main Stack: No Spacing After
        
            //MARK: (NAME)                                 - State the purpose or name of the code
            Stack {                                          - Any Stack: Spacing Before and After
                Content                                  - All Content: No Spacing Before or After
            }
            .styling                                            - Any Stack Styling: Spacing After
            
            //MARK: (NAME)                                 - State the purpose or name of the code
            Stack {                                          - Any Stack: Spacing Before and After
                Content                                  - All Content: No Spacing Before or After
            }
            .styling                                            - Any Stack Styling: Spacing After
        
        }
    }
}

//MARK: Preview
struct View_Previews: PreviewProvider {
    static var previews: some View {
        View()
    }
}

