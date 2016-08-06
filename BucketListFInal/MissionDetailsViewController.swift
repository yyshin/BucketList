//
//  MissionDetailsViewController.swift
//  BucketListFInal
//
//  Created by Yoorian YeEun Shin on 8/5/16.
//  Copyright © 2016 Yoorian Shin. All rights reserved.
//

import UIKit

class MissionDetailsViewController: UITableViewController {
    weak var cancelButtonDelegate: CancelButtonDelegate?
    @IBAction func cancelBarButtonPressed(sender: UIBarButtonItem) {
        cancelButtonDelegate?.cancelButtonPressedFrom(self)
    }
    @IBAction func doneBarButtonPressed(sender: UIBarButtonItem) {
        delegate?.missionDetailsViewController(self, didFinishAddingMission: newMissionTextField.text!)
    }
    
    @IBOutlet weak var newMissionTextField: UITextField!
    weak var delegate: MissionDetailsViewControllerDelegate?

}




