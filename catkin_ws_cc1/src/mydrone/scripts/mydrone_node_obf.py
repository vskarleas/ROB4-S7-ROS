#!/usr/bin/env python3
import rospy #line:6
import numpy as np #line:7
from std_msgs .msg import Float32 #line:8
from mydrone .srv import alt_warning ,alt_warningResponse #line:9
class mydrone :#line:14
    def __init__ (OOOOOO00O0O0O0OOO ):#line:16
        print ("Launching mydrone:")#line:18
        OOOOOO00O0O0O0OOO .rate_pressure =1.33 #line:19
        OOOOOO00O0O0O0OOO .rate_temp =0.777 #line:20
        OOOOOO00O0O0O0OOO .freq_simu =1 /100 #line:21
        OOOOOO00O0O0O0OOO .temperature =0 #line:24
        OOOOOO00O0O0O0OOO .pressure =0 #line:25
        OOOOOO00O0O0O0OOO .altitude =0 #line:26
        OOOOOO00O0O0O0OOO .message_pressure =Float32 ()#line:29
        OOOOOO00O0O0O0OOO .message_temp =Float32 ()#line:30
        rospy .init_node ('mydrone',anonymous =False )#line:33
        OOOOOO00O0O0O0OOO .time_init =rospy .get_time ()#line:34
        rospy .Service ('altitude_warning',alt_warning ,OOOOOO00O0O0O0OOO .led_alt_warning )#line:35
        OOOOOO00O0O0O0OOO .pub_pressure =rospy .Publisher ('/pressure',Float32 ,queue_size =10 )#line:36
        OOOOOO00O0O0O0OOO .pub_temp =rospy .Publisher ('/temperature',Float32 ,queue_size =10 )#line:37
        rospy .Timer (rospy .Duration (1.0 /OOOOOO00O0O0O0OOO .rate_pressure ),OOOOOO00O0O0O0OOO .publish_pressure )#line:40
        print (" -> Publishing pressure data to /pressure.")#line:41
        rospy .Timer (rospy .Duration (1.0 /OOOOOO00O0O0O0OOO .rate_temp ),OOOOOO00O0O0O0OOO .publish_temp )#line:42
        print (" -> Publishing temperature data to /temperature.")#line:43
    def publish_temp (OO0O0OOO0O0OO0OOO ,O0O0O0O0OO0OO0OOO ):#line:49
        OOO00000O0OO0OOOO =0 #line:51
        OO0OO00OO0O00OO00 =22 #line:52
        O0000OO0OO0O0OOO0 =(OO0OO00OO0O00OO00 +OOO00000O0OO0OOOO )/2 #line:53
        OO0O0OOO0O0OO0OOO .temperature =O0000OO0OO0O0OOO0 +(OO0OO00OO0O00OO00 -O0000OO0OO0O0OOO0 )*np .cos (2 *np .pi *OO0O0OOO0O0OO0OOO .freq_simu *(rospy .get_time ()-OO0O0OOO0O0OO0OOO .time_init ))+((np .random .random_sample (size =1 )-0.5 )*2 )*0.5 #line:57
        OO0O0OOO0O0OO0OOO .message_temp .data =OO0O0OOO0O0OO0OOO .temperature #line:59
        OO0O0OOO0O0OO0OOO .pub_temp .publish (OO0O0OOO0O0OO0OOO .message_temp )#line:60
    def publish_pressure (O0OO0000O0OO00OO0 ,OOOO00O0O0O000OOO ):#line:66
        OOO0OO00O0O0OOO0O =100 #line:68
        OOO00OOOO0OOOO0OO =1500 #line:69
        O0OO000OO000OO00O =(OOO0OO00O0O0OOO0O +OOO00OOOO0OOOO0OO )/2 #line:70
        O0OO0000O0OO00OO0 .altitude =O0OO000OO000OO00O -(OOO00OOOO0OOOO0OO -O0OO000OO000OO00O )*np .cos (2 *np .pi *O0OO0000O0OO00OO0 .freq_simu *(rospy .get_time ()-O0OO0000O0OO00OO0 .time_init ))#line:73
        OOO0O000OOO0OO00O =101325 #line:77
        OO00000O00O0O0O00 =0.0289644 #line:78
        O0OO0OO00OO00OOO0 =9.80665 #line:79
        O0OO0000OO00OO0O0 =8.31432 #line:80
        O0O000O0OOOO0O0OO =O0OO0000O0OO00OO0 .temperature +273.15 #line:81
        O0OO0000O0OO00OO0 .pressure =OOO0O000OOO0OO00O *np .exp (-OO00000O00O0O0O00 *O0OO0OO00OO00OOO0 *O0OO0000O0OO00OO0 .altitude /(O0OO0000OO00OO0O0 *O0O000O0OOOO0O0OO ))+((np .random .random_sample (size =1 )-0.5 )*2 )*500 #line:83
        O0OO0000O0OO00OO0 .message_pressure .data =O0OO0000O0OO00OO0 .pressure #line:86
        O0OO0000O0OO00OO0 .pub_pressure .publish (O0OO0000O0OO00OO0 .message_pressure )#line:87
    def led_alt_warning (O0OOOO00O00OO0O0O ,OO00O0O0O0O0000O0 ):#line:93
        if OO00O0O0O0O0000O0 .message =="WARNING":#line:96
            O000O0O0O0OO0O0OO ="RED"#line:97
            rospy .loginfo ("LED set to RED on the remote.")#line:98
        elif OO00O0O0O0O0000O0 .message =="NORMAL":#line:100
            O000O0O0O0OO0O0OO ="GREEN"#line:101
            rospy .loginfo ("LED set to GREEN on the remote.")#line:102
        else :#line:104
            rospy .loginfo ("Bad LED service request.")#line:105
            O000O0O0O0OO0O0OO ="ERROR"#line:106
        return alt_warningResponse (O000O0O0O0OO0O0OO )#line:108
if __name__ =='__main__':#line:114
    try :#line:115
        robot =mydrone ()#line:116
        print ("Running...")#line:117
        rospy .spin ()#line:118
    except rospy .ROSInterruptException :#line:120
        pass #line:121
