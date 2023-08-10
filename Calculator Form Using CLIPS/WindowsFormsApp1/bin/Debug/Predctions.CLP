;Create template and facts (manual or by function) 
(deftemplate weateher (slot temprature) (slot month) (slot sun) (slot wind)) 
(assert(weateher (temprature 25) (month "january") (sun "High") (wind "High")))
(assert(weateher (temprature 25) (month "february") (sun "High") (wind "High")))
(assert(weateher (temprature 25) (month "march") (sun "High") (wind "High")))
(assert(weateher (temprature 25) (month "april") (sun "High") (wind "High")))
(assert(weateher (temprature 25) (month "May") (sun "High") (wind "High")))
(assert(weateher (temprature 25) (month "june") (sun "High") (wind "High")))
(assert(weateher (temprature 25) (month "july") (sun "High") (wind "High")))
(assert(weateher (temprature 25) (month "Agust") (sun "High") (wind "High")))
(assert(weateher (temprature 25) (month "septemper") (sun "High") (wind "High")))
(assert(weateher (temprature 25) (month "Octoper") (sun "High") (wind "High")))
(assert(weateher (temprature 25) (month "Novemper") (sun "High") (wind "High")))
(assert(weateher (temprature 25) (month "december") (sun "High") (wind "High")))
;add fact
(deffunction add-fact(?t ?m ?s ?w)
	(assert(weateher (temprature ?t) (month ?m) (sun ?s) (wind ?w)))
)

;delete fact
(deffunction remove-fact(?n)
	(retract ?n)
)

;predctions about temprature 
(deffunction temp-predctions(?t)
   (if (< ?t 20)then Cold 
     else
     (if (> ?t 20)then hot)
   )
)

;predctions about month
(deffunction month-predctions(?m)
   (if (eq ?m "january")then winnter
     else
     (if (eq ?m "may")then summer 
     else
     (if (eq ?m "septemper")then spring))
   )
)

;predctions about sun
(deffunction sun-predctions(?s)
   (if (eq ?s "high")then sunny
     else
     (if (eq ?s "medium")then PCloudy 
     else
     (if (eq ?s "low")then Cloudy))
   )
)


;predctions about wind
(deffunction wind-predctions(?w)
   (if (eq ?w "high")then heavy
     else
     (if (eq ?w "medium")then dusty 
     else
     (if (eq ?w "low")then fine))
   )
)