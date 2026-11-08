# *******************************************************************************
# * Copyright (C) 2017-2025 German Aerospace Center (DLR). 
# * Eclipse ADORe, Automated Driving Open Research https://eclipse.org/adore
# *
# * This program and the accompanying materials are made available under the 
# * terms of the Eclipse Public License 2.0 which is available at
# * http://www.eclipse.org/legal/epl-2.0.
# *
# * SPDX-License-Identifier: EPL-2.0 
# *
# * Contributors: 
# *   Matthias Nichting
# ********************************************************************************

# This message is intended to be used to publish requests by passengers
# e.g. to change goal point, to change driving behavior, to provide information


std_msgs/Header header

# type of passenger request
# intended to be set to one of the constants defined below
uint16 type

# further details:
# if numerical_detail holds more than one value:
# numerical_detail[0] is x
# numerical_detail[1] is y
float64[] numerical_detail

# further details, e.g. goal point, target speed, 
string text_detail


uint16 UNKNOWN = 0

uint16 EXECUTE_EMERGENCY_STOP = 1
uint16 EXECUTE_LANE_FOLLOWING = 2
uint16 EXECUTE_LANE_CHANGE_LEFT = 3
uint16 EXECUTE_LANE_CHANGE_RIGHT = 4
uint16 INCREASE_VELOCITY = 5
uint16 DECREASE_VELOCITY = 6
uint16 STOP_AND_LET_SB_BOARD = 7
uint16 STOP_AND_LET_SB_EXIT = 8
uint16 STOP_AND_PARK = 9
uint16 STAY_BEHIND_THE_VEHICLE_AHEAD = 10
uint16 TURN_RIGHT = 11
uint16 TURN_LEFT = 12
uint16 PERFORM_U_TURN = 13
uint16 LEAVE_ROUNDABOUT_AT_EXIT_X = 14
uint16 CROSS_JUNCTION_STRAIGHT = 15
uint16 DRIVE_BACK_TO_START_POINT = 16
uint16 INCREASE_ACCELERATION_BOUNDS_LONGITUDINAL = 17
uint16 DECREASE_ACCELERATION_BOUNDS_LONGITUDINAL = 18
uint16 INCREASE_ACCELERATION_BOUNDS_LATERAL = 19
uint16 DECREASE_ACCELERATION_BOUNDS_LATERAL = 20
uint16 DRIVE_MORE_SPORTILY = 21
uint16 DRIVE_MORE_COMFORTABLY = 22
uint16 RESUME_RIDE = 23
uint16 KEEP_MORE_DISTANCE = 24
uint16 SET_NEW_GOAL_POINT = 25
uint16 STOP_AT_NEXT_VIRTUAL_STOP = 26
uint16 MOVE_FORWARD_SHORT_DISTANCE = 27

uint16 PROVIDE_INFO_CURRENT_VELOCITY = 100
uint16 PROVIDE_INFO_REMAINING_DISTANCE_TO_GOAL = 101


