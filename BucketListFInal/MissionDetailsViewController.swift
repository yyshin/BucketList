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
        if var mission = missionToEdit {
            mission = newMissionTextField.text!
            delegate?.missionDetailsViewController(self, didFinishEditingMission: mission, atIndexPath: missionToEditIndexPath!)
        } else {
            let mission = newMissionTextField.text!
            delegate?.missionDetailsViewController(self, didFinishAddingMission: mission)
        }
    }
    
    @IBOutlet weak var newMissionTextField: UITextField!
    weak var delegate: MissionDetailsViewControllerDelegate?
    
    override func viewWillAppear(animated: Bool) {
        newMissionTextField.text = missionToEdit
    }
    
    var missionToEdit: String?
    var missionToEditIndexPath: Int?

}




