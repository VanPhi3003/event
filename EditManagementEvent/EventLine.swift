//
//  EventLine.swift
//  EditManagementEvent
//
//  Created by Cntt36 on 5/27/17.
//  Copyright © 2017 nhom5. All rights reserved.
//

import Foundation
import UIKit

class EventLine {
    
    var day: String
    var events: [Event]
    
    // ham khoi tao
    init(wdays: String, eventL: [Event]) {
        day = wdays
        events = eventL
    }
    
    // cac ngay trong tuan chua su kien
    class func eventLine() -> [EventLine] {
        return [self.thu2(), self.thu3(), self.thu4(), self.thu5(),self.thu6(), self.thu7(), self.chunhat()]
    }
    //
    private class func thu2() -> EventLine {
        var events = [Event]()
        
        events.append(Event(title: "nấu cơm trưa", desc: "mua gạo với thịt"))
        events.append(Event(title: "nấu cơm chiều", desc: "mua rau muống"))
        
        return EventLine(wdays: "Thứ 2", eventL: events)
    }
    private class func thu3() -> EventLine {
        var events = [Event]()
        
        events.append(Event(title: "nấu cơm trưa", desc: "mua gạo với thịt"))
        events.append(Event(title: "nấu cơm chiều", desc: "mua rau muống"))
        
        return EventLine(wdays: "Thứ 3", eventL: events)
    }
    private class func thu4() -> EventLine {
        var events = [Event]()
        
        events.append(Event(title: "nấu cơm trưa", desc: "mua gạo với thịt"))
        events.append(Event(title: "nấu cơm chiều", desc: "mua rau muống"))
        
        return EventLine(wdays: "Thứ 4", eventL: events)
    }
    private class func thu5() -> EventLine {
        var events = [Event]()
        
        events.append(Event(title: "nấu cơm trưa", desc: "mua gạo với thịt"))
        events.append(Event(title: "nấu cơm chiều", desc: "mua rau muống"))
        
        return EventLine(wdays: "Thứ 5", eventL: events)
    }
    private class func thu6() -> EventLine {
        var events = [Event]()
        
        events.append(Event(title: "nấu cơm trưa", desc: "mua gạo với thịt"))
        events.append(Event(title: "nấu cơm chiều", desc: "mua rau muống"))
        
        return EventLine(wdays: "Thứ 6", eventL: events)
    }
    private class func thu7() -> EventLine {
        var events = [Event]()
        
        events.append(Event(title: "nấu cơm trưa", desc: "mua gạo với thịt"))
        events.append(Event(title: "nấu cơm chiều", desc: "mua rau muống"))
        
        return EventLine(wdays: "Thứ 7", eventL: events)
    }
    private class func chunhat() -> EventLine {
        var events = [Event]()
        
        events.append(Event(title: "nấu cơm trưa", desc: "mua gạo với thịt"))
        events.append(Event(title: "nấu cơm chiều", desc: "mua rau muống"))
        
        return EventLine(wdays: "Chủ Nhật", eventL: events)
    }
    
}

