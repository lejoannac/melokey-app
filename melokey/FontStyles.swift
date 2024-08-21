//
//  FontStyles.swift
//  melokey
//
//  Created by joanna on 2024-08-20.
//

import Foundation
import SwiftUI

extension Font {
    static var MainTitle: Font {
        return Font.custom("Gazpacho-Black", size: 175)
    }
    
    static var Dates: Font {
        return Font.custom("Gazpacho-Black", size: 16)
    }
    
    static var Settings: Font {
        return Font.custom("Gazpacho-Black", size: 20)
    }
    
    static var Main: Font {
        return Font.custom("Gazpacho-Black", size: 32)
    }
}
