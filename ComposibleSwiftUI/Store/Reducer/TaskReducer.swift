//
//  TaskReducer.swift
//  ComposibleSwiftUI
//
//  Created by Sachin Sabat on 28/01/24.
//

import Foundation

func taskReducer(_ state: TaskState, _ action: Action) -> TaskState {

    var state = state

    switch action {
        case let action as AddTaskAction:
            state.tasks.append(action.task)
        default:
            break
    }

    return state
}
