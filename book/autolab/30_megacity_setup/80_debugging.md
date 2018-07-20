# Testing and debugging {#autocharging-debugging status=beta}

## Debug the whole charging pipeline

If you would like to test the whole charging procedure, place your Duckiebot on a road which ends in the intersection which is connected to the maintenance area. Then, request the Duckiebot to go charging (this is usually done by either a timer or the battery status estimation):

    rostopic pub -1 "/<robot_name>/maintenance_control_node/go_mt_charging" std_msgs/Bool true

Now, let your Duckiebot drive autonomously (L1 on your Joystick or 'a' on your virtual joystick).

## Debug a single maintenance state

There exist the following maintenance states: [WAY_TO_MAINTENANCE, WAY_TO_CHARGING, CHARGING, WAY_TO_CALIBRATING, CALIBRATING, WAY_TO_CITY]

If you would like to test a specific maintenance state (i.e. for testing a specific path like path_calib), change the state with

    rostopic pub -1 "/<robot_name>/maintenance_control_node/set_state" std_msgs/String "<state_name>"
