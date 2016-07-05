//
//  ViewController.swift
//  PushNotificationExample
//
//  Created by Murilo Da Paixão Lima on 04/07/16.
//  Copyright © 2016 Murilo Da Paixão Lima. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!

    var pushNotifications: [[NSObject: AnyObject]] = []

    override func viewDidLoad() {
        super.viewDidLoad()

//        if let ui = userInfo {
//            print("Deu certu!")
//        }
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pushNotifications.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! TableViewCell

        let info = pushNotifications[indexPath.row]

        cell.labelKey.text = "\(info)"
        cell.labelValue.text = "\(indexPath.row)"

        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

