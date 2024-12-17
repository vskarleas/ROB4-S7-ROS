;; Auto-generated. Do not edit!


(when (boundp 'submarinedrone::depth_warning)
  (if (not (find-package "SUBMARINEDRONE"))
    (make-package "SUBMARINEDRONE"))
  (shadow 'depth_warning (find-package "SUBMARINEDRONE")))
(unless (find-package "SUBMARINEDRONE::DEPTH_WARNING")
  (make-package "SUBMARINEDRONE::DEPTH_WARNING"))
(unless (find-package "SUBMARINEDRONE::DEPTH_WARNINGREQUEST")
  (make-package "SUBMARINEDRONE::DEPTH_WARNINGREQUEST"))
(unless (find-package "SUBMARINEDRONE::DEPTH_WARNINGRESPONSE")
  (make-package "SUBMARINEDRONE::DEPTH_WARNINGRESPONSE"))

(in-package "ROS")





(defclass submarinedrone::depth_warningRequest
  :super ros::object
  :slots (_message ))

(defmethod submarinedrone::depth_warningRequest
  (:init
   (&key
    ((:message __message) "")
    )
   (send-super :init)
   (setq _message (string __message))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass submarinedrone::depth_warningResponse
  :super ros::object
  :slots (_response ))

(defmethod submarinedrone::depth_warningResponse
  (:init
   (&key
    ((:response __response) "")
    )
   (send-super :init)
   (setq _response (string __response))
   self)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; string _response
    4 (length _response)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _response
       (write-long (length _response) s) (princ _response s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _response
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _response (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass submarinedrone::depth_warning
  :super ros::object
  :slots ())

(setf (get submarinedrone::depth_warning :md5sum-) "22367e279ad9f68e7619b633d4d05ec2")
(setf (get submarinedrone::depth_warning :datatype-) "submarinedrone/depth_warning")
(setf (get submarinedrone::depth_warning :request) submarinedrone::depth_warningRequest)
(setf (get submarinedrone::depth_warning :response) submarinedrone::depth_warningResponse)

(defmethod submarinedrone::depth_warningRequest
  (:response () (instance submarinedrone::depth_warningResponse :init)))

(setf (get submarinedrone::depth_warningRequest :md5sum-) "22367e279ad9f68e7619b633d4d05ec2")
(setf (get submarinedrone::depth_warningRequest :datatype-) "submarinedrone/depth_warningRequest")
(setf (get submarinedrone::depth_warningRequest :definition-)
      "# Submarine depth warning management
# 
#  - message: should be either NORMAL or WARNING
#  - response: a short message indicating the color of the WARNING LED on the controler
#       color is changed to GREEN if depth is NORMAL, or to RED if a WARNING is raised with the service

string message
---
string response

")

(setf (get submarinedrone::depth_warningResponse :md5sum-) "22367e279ad9f68e7619b633d4d05ec2")
(setf (get submarinedrone::depth_warningResponse :datatype-) "submarinedrone/depth_warningResponse")
(setf (get submarinedrone::depth_warningResponse :definition-)
      "# Submarine depth warning management
# 
#  - message: should be either NORMAL or WARNING
#  - response: a short message indicating the color of the WARNING LED on the controler
#       color is changed to GREEN if depth is NORMAL, or to RED if a WARNING is raised with the service

string message
---
string response

")



(provide :submarinedrone/depth_warning "22367e279ad9f68e7619b633d4d05ec2")


