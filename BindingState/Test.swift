//
//  Test.swift
//  BindingState
//
//  Created by EDUARDO MEJIA on 01/04/20.
//  Copyright © 2020 EDDIEWARE. All rights reserved.
//

import SwiftUI

struct Test: View {
    var coursesVM = CoursesViewModel()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
       // Text(coursesVM.messages)
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
