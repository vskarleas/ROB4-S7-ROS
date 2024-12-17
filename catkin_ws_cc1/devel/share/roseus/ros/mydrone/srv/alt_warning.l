;; Auto-generated. Do not edit!


(when (boundp 'mydrone::alt_warning)
  (if (not (find-package "MYDRONE"))
    (make-package "MYDRONE"))
  (shadow 'alt_warning (find-package "MYDRONE")))
(unless (find-package "MYDRONE::ALT_WARNING")
  (make-package "MYDRONE::ALT_WARNING"))
(unless (find-package "MYDRONE::ALT_WARNINGREQUEST")
  (make-package "MYDRONE::ALT_WARNINGREQUEST"))
(unless (find-package "MYDRONE::ALT_WARNINGRESPONSE")
  (make-package "MYDRONE::ALT_WARNINGRESPONSE"))

(in-package "ROS")





(defclass mydrone::alt_warningRequest
  :super ros::object
  :slots (_message ))

(defmethod mydrone::alt_warningRequest
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

(defclass mydrone::alt_warningResponse
  :super ros::object
  :slots (_response ))

(defmethod mydrone::alt_warningResponse
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

(defclass mydrone::alt_warning
  :super ros::object
  :slots ())

(setf (get mydrone::alt_warning :md5sum-) "22367e279ad9f68e7619b633d4d05ec2")
(setf (get mydrone::alt_warning :datatype-) "mydrone/alt_warning")
(setf (get mydrone::alt_warning :request) mydrone::alt_warningRequest)
(setf (get mydrone::alt_warning :response) mydrone::alt_warningResponse)

(defmethod mydrone::alt_warningRequest
  (:response () (instance mydrone::alt_warningResponse :init)))

(setf (get mydrone::alt_warningRequest :md5sum-) "22367e279ad9f68e7619b633d4d05ec2")
(setf (get mydrone::alt_warningRequest :datatype-) "mydrone/alt_warningRequest")
(setf (get mydrone::alt_warningRequest :definition-)
      "# Mydrone altitude warning management
# 
#  - message: should be either NORMAL or WARNING
#  - response: a short message indicating the color of the WARNING LED on the controler
#       color is changed to GREEN if altitude is NORMAL, or to RED if a WARNING is raised with the service

string message
---
string response

")

(setf (get mydrone::alt_warningResponse :md5sum-) "22367e279ad9f68e7619b633d4d05ec2")
(setf (get mydrone::alt_warningResponse :datatype-) "mydrone/alt_warningResponse")
(setf (get mydrone::alt_warningResponse :definition-)
      "# Mydrone altitude warning management
# 
#  - message: should be either NORMAL or WARNING
#  - response: a short message indicating the color of the WARNING LED on the controler
#       color is changed to GREEN if altitude is NORMAL, or to RED if a WARNING is raised with the service

string message
---
string response

")



(provide :mydrone/alt_warning "22367e279ad9f68e7619b633d4d05ec2")


