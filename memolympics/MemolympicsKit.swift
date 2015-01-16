//
//  MemolympicsKit.swift
//  memolympics
//
//  Created by destroyme. on 1/1/15.
//  Copyright (c) 2015 DMPR. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//



import UIKit

public class MemolympicsKit : NSObject {

    //// Cache

    private struct Cache {
        static var black: UIColor = UIColor(red: 0.173, green: 0.176, blue: 0.176, alpha: 1.000)
        static var grey: UIColor = UIColor(red: 0.267, green: 0.271, blue: 0.271, alpha: 1.000)
        static var green: UIColor = UIColor(red: 0.560, green: 0.748, blue: 0.500, alpha: 1.000)
        static var teal: UIColor = UIColor(red: 0.710, green: 1.000, blue: 0.914, alpha: 1.000)
        static var paleteal: UIColor = UIColor(red: 0.773, green: 0.878, blue: 0.847, alpha: 1.000)
        static var palered: UIColor = UIColor(red: 0.788, green: 0.788, blue: 0.788, alpha: 1.000)
        static var palepink: UIColor = UIColor(red: 0.808, green: 0.671, blue: 0.694, alpha: 1.000)
        static var play: UIImage?
        static var pause: UIImage?
        static var timer: UIImage?
        static var image: UIImage?

    }

    //// Colors

    public class var black: UIColor { return Cache.black }
    public class var grey: UIColor { return Cache.grey }
    public class var green: UIColor { return Cache.green }
    public class var teal: UIColor { return Cache.teal }
    public class var paleteal: UIColor { return Cache.paleteal }
    public class var palered: UIColor { return Cache.palered }
    public class var palepink: UIColor { return Cache.palepink }

    //// Images

    public class var play: UIImage {
        if Cache.play == nil {
            Cache.play = UIImage(named: "play")!
        }
        return Cache.play!
    }

    public class var pause: UIImage {
        if Cache.pause == nil {
            Cache.pause = UIImage(named: "pause")!
        }
        return Cache.pause!
    }

    public class var timer: UIImage {
        if Cache.timer == nil {
            Cache.timer = UIImage(named: "timer")!
        }
        return Cache.timer!
    }

    public class var image: UIImage {
        if Cache.image == nil {
            Cache.image = UIImage(named: "image")!
        }
        return Cache.image!
    }

    //// Drawing Methods

    public class func drawSideScrollingLabel(#position: CGPoint, text: String) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// sideScrollingLabelContainer Drawing
        let sideScrollingLabelContainerRect = CGRectMake(position.x, position.y, 240, 40)
        let sideScrollingLabelContainerStyle = NSMutableParagraphStyle.defaultParagraphStyle().mutableCopy() as NSMutableParagraphStyle
        sideScrollingLabelContainerStyle.alignment = NSTextAlignment.Center

        let sideScrollingLabelContainerFontAttributes = [NSFontAttributeName: UIFont(name: "HelveticaNeue-Light", size: 22)!, NSForegroundColorAttributeName: MemolympicsKit.black, NSParagraphStyleAttributeName: sideScrollingLabelContainerStyle]

        let sideScrollingLabelContainerTextHeight: CGFloat = NSString(string: text).boundingRectWithSize(CGSizeMake(sideScrollingLabelContainerRect.width, CGFloat.infinity), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: sideScrollingLabelContainerFontAttributes, context: nil).size.height
        CGContextSaveGState(context)
        CGContextClipToRect(context, sideScrollingLabelContainerRect);
        NSString(string: text).drawInRect(CGRectMake(sideScrollingLabelContainerRect.minX, sideScrollingLabelContainerRect.minY + (sideScrollingLabelContainerRect.height - sideScrollingLabelContainerTextHeight) / 2, sideScrollingLabelContainerRect.width, sideScrollingLabelContainerTextHeight), withAttributes: sideScrollingLabelContainerFontAttributes)
        CGContextRestoreGState(context)
    }

    public class func drawCountdownTimer(#position: CGPoint, text: String) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// countdownTextRect Drawing
        let countdownTextRectRect = CGRectMake(position.x, position.y, 240, 120)
        let countdownTextRectStyle = NSMutableParagraphStyle.defaultParagraphStyle().mutableCopy() as NSMutableParagraphStyle
        countdownTextRectStyle.alignment = NSTextAlignment.Center

        let countdownTextRectFontAttributes = [NSFontAttributeName: UIFont(name: "Helvetica", size: 98)!, NSForegroundColorAttributeName: MemolympicsKit.green, NSParagraphStyleAttributeName: countdownTextRectStyle]

        let countdownTextRectTextHeight: CGFloat = NSString(string: text).boundingRectWithSize(CGSizeMake(countdownTextRectRect.width, CGFloat.infinity), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: countdownTextRectFontAttributes, context: nil).size.height
        CGContextSaveGState(context)
        CGContextClipToRect(context, countdownTextRectRect);
        NSString(string: text).drawInRect(CGRectMake(countdownTextRectRect.minX, countdownTextRectRect.minY + (countdownTextRectRect.height - countdownTextRectTextHeight) / 2, countdownTextRectRect.width, countdownTextRectTextHeight), withAttributes: countdownTextRectFontAttributes)
        CGContextRestoreGState(context)
    }

}

@objc protocol StyleKitSettableImage {
    func setImage(image: UIImage!)
}

@objc protocol StyleKitSettableSelectedImage {
    func setSelectedImage(image: UIImage!)
}
