(define (problem drone_problem_d1_r0_l170_p170_c170_g170_ct2)
  (:domain drone-domain)
  (:objects
	drone1 - drone
	depot - location
	loc1 - location
	loc2 - location
	loc3 - location
	loc4 - location
	loc5 - location
	loc6 - location
	loc7 - location
	loc8 - location
	loc9 - location
	loc10 - location
	loc11 - location
	loc12 - location
	loc13 - location
	loc14 - location
	loc15 - location
	loc16 - location
	loc17 - location
	loc18 - location
	loc19 - location
	loc20 - location
	loc21 - location
	loc22 - location
	loc23 - location
	loc24 - location
	loc25 - location
	loc26 - location
	loc27 - location
	loc28 - location
	loc29 - location
	loc30 - location
	loc31 - location
	loc32 - location
	loc33 - location
	loc34 - location
	loc35 - location
	loc36 - location
	loc37 - location
	loc38 - location
	loc39 - location
	loc40 - location
	loc41 - location
	loc42 - location
	loc43 - location
	loc44 - location
	loc45 - location
	loc46 - location
	loc47 - location
	loc48 - location
	loc49 - location
	loc50 - location
	loc51 - location
	loc52 - location
	loc53 - location
	loc54 - location
	loc55 - location
	loc56 - location
	loc57 - location
	loc58 - location
	loc59 - location
	loc60 - location
	loc61 - location
	loc62 - location
	loc63 - location
	loc64 - location
	loc65 - location
	loc66 - location
	loc67 - location
	loc68 - location
	loc69 - location
	loc70 - location
	loc71 - location
	loc72 - location
	loc73 - location
	loc74 - location
	loc75 - location
	loc76 - location
	loc77 - location
	loc78 - location
	loc79 - location
	loc80 - location
	loc81 - location
	loc82 - location
	loc83 - location
	loc84 - location
	loc85 - location
	loc86 - location
	loc87 - location
	loc88 - location
	loc89 - location
	loc90 - location
	loc91 - location
	loc92 - location
	loc93 - location
	loc94 - location
	loc95 - location
	loc96 - location
	loc97 - location
	loc98 - location
	loc99 - location
	loc100 - location
	loc101 - location
	loc102 - location
	loc103 - location
	loc104 - location
	loc105 - location
	loc106 - location
	loc107 - location
	loc108 - location
	loc109 - location
	loc110 - location
	loc111 - location
	loc112 - location
	loc113 - location
	loc114 - location
	loc115 - location
	loc116 - location
	loc117 - location
	loc118 - location
	loc119 - location
	loc120 - location
	loc121 - location
	loc122 - location
	loc123 - location
	loc124 - location
	loc125 - location
	loc126 - location
	loc127 - location
	loc128 - location
	loc129 - location
	loc130 - location
	loc131 - location
	loc132 - location
	loc133 - location
	loc134 - location
	loc135 - location
	loc136 - location
	loc137 - location
	loc138 - location
	loc139 - location
	loc140 - location
	loc141 - location
	loc142 - location
	loc143 - location
	loc144 - location
	loc145 - location
	loc146 - location
	loc147 - location
	loc148 - location
	loc149 - location
	loc150 - location
	loc151 - location
	loc152 - location
	loc153 - location
	loc154 - location
	loc155 - location
	loc156 - location
	loc157 - location
	loc158 - location
	loc159 - location
	loc160 - location
	loc161 - location
	loc162 - location
	loc163 - location
	loc164 - location
	loc165 - location
	loc166 - location
	loc167 - location
	loc168 - location
	loc169 - location
	loc170 - location
	crate1 - crate
	crate2 - crate
	crate3 - crate
	crate4 - crate
	crate5 - crate
	crate6 - crate
	crate7 - crate
	crate8 - crate
	crate9 - crate
	crate10 - crate
	crate11 - crate
	crate12 - crate
	crate13 - crate
	crate14 - crate
	crate15 - crate
	crate16 - crate
	crate17 - crate
	crate18 - crate
	crate19 - crate
	crate20 - crate
	crate21 - crate
	crate22 - crate
	crate23 - crate
	crate24 - crate
	crate25 - crate
	crate26 - crate
	crate27 - crate
	crate28 - crate
	crate29 - crate
	crate30 - crate
	crate31 - crate
	crate32 - crate
	crate33 - crate
	crate34 - crate
	crate35 - crate
	crate36 - crate
	crate37 - crate
	crate38 - crate
	crate39 - crate
	crate40 - crate
	crate41 - crate
	crate42 - crate
	crate43 - crate
	crate44 - crate
	crate45 - crate
	crate46 - crate
	crate47 - crate
	crate48 - crate
	crate49 - crate
	crate50 - crate
	crate51 - crate
	crate52 - crate
	crate53 - crate
	crate54 - crate
	crate55 - crate
	crate56 - crate
	crate57 - crate
	crate58 - crate
	crate59 - crate
	crate60 - crate
	crate61 - crate
	crate62 - crate
	crate63 - crate
	crate64 - crate
	crate65 - crate
	crate66 - crate
	crate67 - crate
	crate68 - crate
	crate69 - crate
	crate70 - crate
	crate71 - crate
	crate72 - crate
	crate73 - crate
	crate74 - crate
	crate75 - crate
	crate76 - crate
	crate77 - crate
	crate78 - crate
	crate79 - crate
	crate80 - crate
	crate81 - crate
	crate82 - crate
	crate83 - crate
	crate84 - crate
	crate85 - crate
	crate86 - crate
	crate87 - crate
	crate88 - crate
	crate89 - crate
	crate90 - crate
	crate91 - crate
	crate92 - crate
	crate93 - crate
	crate94 - crate
	crate95 - crate
	crate96 - crate
	crate97 - crate
	crate98 - crate
	crate99 - crate
	crate100 - crate
	crate101 - crate
	crate102 - crate
	crate103 - crate
	crate104 - crate
	crate105 - crate
	crate106 - crate
	crate107 - crate
	crate108 - crate
	crate109 - crate
	crate110 - crate
	crate111 - crate
	crate112 - crate
	crate113 - crate
	crate114 - crate
	crate115 - crate
	crate116 - crate
	crate117 - crate
	crate118 - crate
	crate119 - crate
	crate120 - crate
	crate121 - crate
	crate122 - crate
	crate123 - crate
	crate124 - crate
	crate125 - crate
	crate126 - crate
	crate127 - crate
	crate128 - crate
	crate129 - crate
	crate130 - crate
	crate131 - crate
	crate132 - crate
	crate133 - crate
	crate134 - crate
	crate135 - crate
	crate136 - crate
	crate137 - crate
	crate138 - crate
	crate139 - crate
	crate140 - crate
	crate141 - crate
	crate142 - crate
	crate143 - crate
	crate144 - crate
	crate145 - crate
	crate146 - crate
	crate147 - crate
	crate148 - crate
	crate149 - crate
	crate150 - crate
	crate151 - crate
	crate152 - crate
	crate153 - crate
	crate154 - crate
	crate155 - crate
	crate156 - crate
	crate157 - crate
	crate158 - crate
	crate159 - crate
	crate160 - crate
	crate161 - crate
	crate162 - crate
	crate163 - crate
	crate164 - crate
	crate165 - crate
	crate166 - crate
	crate167 - crate
	crate168 - crate
	crate169 - crate
	crate170 - crate
	food - contents
	medicine - contents
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
	person7 - person
	person8 - person
	person9 - person
	person10 - person
	person11 - person
	person12 - person
	person13 - person
	person14 - person
	person15 - person
	person16 - person
	person17 - person
	person18 - person
	person19 - person
	person20 - person
	person21 - person
	person22 - person
	person23 - person
	person24 - person
	person25 - person
	person26 - person
	person27 - person
	person28 - person
	person29 - person
	person30 - person
	person31 - person
	person32 - person
	person33 - person
	person34 - person
	person35 - person
	person36 - person
	person37 - person
	person38 - person
	person39 - person
	person40 - person
	person41 - person
	person42 - person
	person43 - person
	person44 - person
	person45 - person
	person46 - person
	person47 - person
	person48 - person
	person49 - person
	person50 - person
	person51 - person
	person52 - person
	person53 - person
	person54 - person
	person55 - person
	person56 - person
	person57 - person
	person58 - person
	person59 - person
	person60 - person
	person61 - person
	person62 - person
	person63 - person
	person64 - person
	person65 - person
	person66 - person
	person67 - person
	person68 - person
	person69 - person
	person70 - person
	person71 - person
	person72 - person
	person73 - person
	person74 - person
	person75 - person
	person76 - person
	person77 - person
	person78 - person
	person79 - person
	person80 - person
	person81 - person
	person82 - person
	person83 - person
	person84 - person
	person85 - person
	person86 - person
	person87 - person
	person88 - person
	person89 - person
	person90 - person
	person91 - person
	person92 - person
	person93 - person
	person94 - person
	person95 - person
	person96 - person
	person97 - person
	person98 - person
	person99 - person
	person100 - person
	person101 - person
	person102 - person
	person103 - person
	person104 - person
	person105 - person
	person106 - person
	person107 - person
	person108 - person
	person109 - person
	person110 - person
	person111 - person
	person112 - person
	person113 - person
	person114 - person
	person115 - person
	person116 - person
	person117 - person
	person118 - person
	person119 - person
	person120 - person
	person121 - person
	person122 - person
	person123 - person
	person124 - person
	person125 - person
	person126 - person
	person127 - person
	person128 - person
	person129 - person
	person130 - person
	person131 - person
	person132 - person
	person133 - person
	person134 - person
	person135 - person
	person136 - person
	person137 - person
	person138 - person
	person139 - person
	person140 - person
	person141 - person
	person142 - person
	person143 - person
	person144 - person
	person145 - person
	person146 - person
	person147 - person
	person148 - person
	person149 - person
	person150 - person
	person151 - person
	person152 - person
	person153 - person
	person154 - person
	person155 - person
	person156 - person
	person157 - person
	person158 - person
	person159 - person
	person160 - person
	person161 - person
	person162 - person
	person163 - person
	person164 - person
	person165 - person
	person166 - person
	person167 - person
	person168 - person
	person169 - person
	person170 - person
  )
  (:init
	(at drone1 depot)
	(at crate1 depot)
	(at crate2 depot)
	(at crate3 depot)
	(at crate4 depot)
	(at crate5 depot)
	(at crate6 depot)
	(at crate7 depot)
	(at crate8 depot)
	(at crate9 depot)
	(at crate10 depot)
	(at crate11 depot)
	(at crate12 depot)
	(at crate13 depot)
	(at crate14 depot)
	(at crate15 depot)
	(at crate16 depot)
	(at crate17 depot)
	(at crate18 depot)
	(at crate19 depot)
	(at crate20 depot)
	(at crate21 depot)
	(at crate22 depot)
	(at crate23 depot)
	(at crate24 depot)
	(at crate25 depot)
	(at crate26 depot)
	(at crate27 depot)
	(at crate28 depot)
	(at crate29 depot)
	(at crate30 depot)
	(at crate31 depot)
	(at crate32 depot)
	(at crate33 depot)
	(at crate34 depot)
	(at crate35 depot)
	(at crate36 depot)
	(at crate37 depot)
	(at crate38 depot)
	(at crate39 depot)
	(at crate40 depot)
	(at crate41 depot)
	(at crate42 depot)
	(at crate43 depot)
	(at crate44 depot)
	(at crate45 depot)
	(at crate46 depot)
	(at crate47 depot)
	(at crate48 depot)
	(at crate49 depot)
	(at crate50 depot)
	(at crate51 depot)
	(at crate52 depot)
	(at crate53 depot)
	(at crate54 depot)
	(at crate55 depot)
	(at crate56 depot)
	(at crate57 depot)
	(at crate58 depot)
	(at crate59 depot)
	(at crate60 depot)
	(at crate61 depot)
	(at crate62 depot)
	(at crate63 depot)
	(at crate64 depot)
	(at crate65 depot)
	(at crate66 depot)
	(at crate67 depot)
	(at crate68 depot)
	(at crate69 depot)
	(at crate70 depot)
	(at crate71 depot)
	(at crate72 depot)
	(at crate73 depot)
	(at crate74 depot)
	(at crate75 depot)
	(at crate76 depot)
	(at crate77 depot)
	(at crate78 depot)
	(at crate79 depot)
	(at crate80 depot)
	(at crate81 depot)
	(at crate82 depot)
	(at crate83 depot)
	(at crate84 depot)
	(at crate85 depot)
	(at crate86 depot)
	(at crate87 depot)
	(at crate88 depot)
	(at crate89 depot)
	(at crate90 depot)
	(at crate91 depot)
	(at crate92 depot)
	(at crate93 depot)
	(at crate94 depot)
	(at crate95 depot)
	(at crate96 depot)
	(at crate97 depot)
	(at crate98 depot)
	(at crate99 depot)
	(at crate100 depot)
	(at crate101 depot)
	(at crate102 depot)
	(at crate103 depot)
	(at crate104 depot)
	(at crate105 depot)
	(at crate106 depot)
	(at crate107 depot)
	(at crate108 depot)
	(at crate109 depot)
	(at crate110 depot)
	(at crate111 depot)
	(at crate112 depot)
	(at crate113 depot)
	(at crate114 depot)
	(at crate115 depot)
	(at crate116 depot)
	(at crate117 depot)
	(at crate118 depot)
	(at crate119 depot)
	(at crate120 depot)
	(at crate121 depot)
	(at crate122 depot)
	(at crate123 depot)
	(at crate124 depot)
	(at crate125 depot)
	(at crate126 depot)
	(at crate127 depot)
	(at crate128 depot)
	(at crate129 depot)
	(at crate130 depot)
	(at crate131 depot)
	(at crate132 depot)
	(at crate133 depot)
	(at crate134 depot)
	(at crate135 depot)
	(at crate136 depot)
	(at crate137 depot)
	(at crate138 depot)
	(at crate139 depot)
	(at crate140 depot)
	(at crate141 depot)
	(at crate142 depot)
	(at crate143 depot)
	(at crate144 depot)
	(at crate145 depot)
	(at crate146 depot)
	(at crate147 depot)
	(at crate148 depot)
	(at crate149 depot)
	(at crate150 depot)
	(at crate151 depot)
	(at crate152 depot)
	(at crate153 depot)
	(at crate154 depot)
	(at crate155 depot)
	(at crate156 depot)
	(at crate157 depot)
	(at crate158 depot)
	(at crate159 depot)
	(at crate160 depot)
	(at crate161 depot)
	(at crate162 depot)
	(at crate163 depot)
	(at crate164 depot)
	(at crate165 depot)
	(at crate166 depot)
	(at crate167 depot)
	(at crate168 depot)
	(at crate169 depot)
	(at crate170 depot)
	(has-content crate1 food)
	(has-content crate2 food)
	(has-content crate3 food)
	(has-content crate4 food)
	(has-content crate5 food)
	(has-content crate6 food)
	(has-content crate7 food)
	(has-content crate8 food)
	(has-content crate9 food)
	(has-content crate10 food)
	(has-content crate11 food)
	(has-content crate12 food)
	(has-content crate13 food)
	(has-content crate14 food)
	(has-content crate15 food)
	(has-content crate16 food)
	(has-content crate17 food)
	(has-content crate18 food)
	(has-content crate19 food)
	(has-content crate20 food)
	(has-content crate21 food)
	(has-content crate22 food)
	(has-content crate23 food)
	(has-content crate24 food)
	(has-content crate25 food)
	(has-content crate26 food)
	(has-content crate27 food)
	(has-content crate28 food)
	(has-content crate29 food)
	(has-content crate30 food)
	(has-content crate31 food)
	(has-content crate32 food)
	(has-content crate33 food)
	(has-content crate34 food)
	(has-content crate35 food)
	(has-content crate36 food)
	(has-content crate37 food)
	(has-content crate38 food)
	(has-content crate39 food)
	(has-content crate40 food)
	(has-content crate41 food)
	(has-content crate42 food)
	(has-content crate43 food)
	(has-content crate44 food)
	(has-content crate45 food)
	(has-content crate46 food)
	(has-content crate47 medicine)
	(has-content crate48 medicine)
	(has-content crate49 medicine)
	(has-content crate50 medicine)
	(has-content crate51 medicine)
	(has-content crate52 medicine)
	(has-content crate53 medicine)
	(has-content crate54 medicine)
	(has-content crate55 medicine)
	(has-content crate56 medicine)
	(has-content crate57 medicine)
	(has-content crate58 medicine)
	(has-content crate59 medicine)
	(has-content crate60 medicine)
	(has-content crate61 medicine)
	(has-content crate62 medicine)
	(has-content crate63 medicine)
	(has-content crate64 medicine)
	(has-content crate65 medicine)
	(has-content crate66 medicine)
	(has-content crate67 medicine)
	(has-content crate68 medicine)
	(has-content crate69 medicine)
	(has-content crate70 medicine)
	(has-content crate71 medicine)
	(has-content crate72 medicine)
	(has-content crate73 medicine)
	(has-content crate74 medicine)
	(has-content crate75 medicine)
	(has-content crate76 medicine)
	(has-content crate77 medicine)
	(has-content crate78 medicine)
	(has-content crate79 medicine)
	(has-content crate80 medicine)
	(has-content crate81 medicine)
	(has-content crate82 medicine)
	(has-content crate83 medicine)
	(has-content crate84 medicine)
	(has-content crate85 medicine)
	(has-content crate86 medicine)
	(has-content crate87 medicine)
	(has-content crate88 medicine)
	(has-content crate89 medicine)
	(has-content crate90 medicine)
	(has-content crate91 medicine)
	(has-content crate92 medicine)
	(has-content crate93 medicine)
	(has-content crate94 medicine)
	(has-content crate95 medicine)
	(has-content crate96 medicine)
	(has-content crate97 medicine)
	(has-content crate98 medicine)
	(has-content crate99 medicine)
	(has-content crate100 medicine)
	(has-content crate101 medicine)
	(has-content crate102 medicine)
	(has-content crate103 medicine)
	(has-content crate104 medicine)
	(has-content crate105 medicine)
	(has-content crate106 medicine)
	(has-content crate107 medicine)
	(has-content crate108 medicine)
	(has-content crate109 medicine)
	(has-content crate110 medicine)
	(has-content crate111 medicine)
	(has-content crate112 medicine)
	(has-content crate113 medicine)
	(has-content crate114 medicine)
	(has-content crate115 medicine)
	(has-content crate116 medicine)
	(has-content crate117 medicine)
	(has-content crate118 medicine)
	(has-content crate119 medicine)
	(has-content crate120 medicine)
	(has-content crate121 medicine)
	(has-content crate122 medicine)
	(has-content crate123 medicine)
	(has-content crate124 medicine)
	(has-content crate125 medicine)
	(has-content crate126 medicine)
	(has-content crate127 medicine)
	(has-content crate128 medicine)
	(has-content crate129 medicine)
	(has-content crate130 medicine)
	(has-content crate131 medicine)
	(has-content crate132 medicine)
	(has-content crate133 medicine)
	(has-content crate134 medicine)
	(has-content crate135 medicine)
	(has-content crate136 medicine)
	(has-content crate137 medicine)
	(has-content crate138 medicine)
	(has-content crate139 medicine)
	(has-content crate140 medicine)
	(has-content crate141 medicine)
	(has-content crate142 medicine)
	(has-content crate143 medicine)
	(has-content crate144 medicine)
	(has-content crate145 medicine)
	(has-content crate146 medicine)
	(has-content crate147 medicine)
	(has-content crate148 medicine)
	(has-content crate149 medicine)
	(has-content crate150 medicine)
	(has-content crate151 medicine)
	(has-content crate152 medicine)
	(has-content crate153 medicine)
	(has-content crate154 medicine)
	(has-content crate155 medicine)
	(has-content crate156 medicine)
	(has-content crate157 medicine)
	(has-content crate158 medicine)
	(has-content crate159 medicine)
	(has-content crate160 medicine)
	(has-content crate161 medicine)
	(has-content crate162 medicine)
	(has-content crate163 medicine)
	(has-content crate164 medicine)
	(has-content crate165 medicine)
	(has-content crate166 medicine)
	(has-content crate167 medicine)
	(has-content crate168 medicine)
	(has-content crate169 medicine)
	(has-content crate170 medicine)
	(at person1 loc106)
	(at person2 loc134)
	(at person3 loc48)
	(at person4 loc54)
	(at person5 loc48)
	(at person6 loc24)
	(at person7 loc53)
	(at person8 loc54)
	(at person9 loc151)
	(at person10 loc133)
	(at person11 loc105)
	(at person12 loc111)
	(at person13 loc135)
	(at person14 loc111)
	(at person15 loc39)
	(at person16 loc157)
	(at person17 loc6)
	(at person18 loc38)
	(at person19 loc50)
	(at person20 loc112)
	(at person21 loc151)
	(at person22 loc69)
	(at person23 loc109)
	(at person24 loc18)
	(at person25 loc164)
	(at person26 loc142)
	(at person27 loc117)
	(at person28 loc163)
	(at person29 loc15)
	(at person30 loc14)
	(at person31 loc80)
	(at person32 loc119)
	(at person33 loc64)
	(at person34 loc58)
	(at person35 loc3)
	(at person36 loc97)
	(at person37 loc37)
	(at person38 loc157)
	(at person39 loc59)
	(at person40 loc50)
	(at person41 loc41)
	(at person42 loc77)
	(at person43 loc2)
	(at person44 loc78)
	(at person45 loc98)
	(at person46 loc6)
	(at person47 loc94)
	(at person48 loc65)
	(at person49 loc53)
	(at person50 loc170)
	(at person51 loc101)
	(at person52 loc23)
	(at person53 loc79)
	(at person54 loc151)
	(at person55 loc55)
	(at person56 loc134)
	(at person57 loc36)
	(at person58 loc25)
	(at person59 loc125)
	(at person60 loc145)
	(at person61 loc1)
	(at person62 loc73)
	(at person63 loc12)
	(at person64 loc135)
	(at person65 loc10)
	(at person66 loc82)
	(at person67 loc115)
	(at person68 loc115)
	(at person69 loc118)
	(at person70 loc145)
	(at person71 loc48)
	(at person72 loc85)
	(at person73 loc95)
	(at person74 loc133)
	(at person75 loc1)
	(at person76 loc52)
	(at person77 loc56)
	(at person78 loc138)
	(at person79 loc111)
	(at person80 loc146)
	(at person81 loc10)
	(at person82 loc25)
	(at person83 loc143)
	(at person84 loc139)
	(at person85 loc35)
	(at person86 loc159)
	(at person87 loc167)
	(at person88 loc128)
	(at person89 loc56)
	(at person90 loc133)
	(at person91 loc139)
	(at person92 loc133)
	(at person93 loc57)
	(at person94 loc131)
	(at person95 loc133)
	(at person96 loc167)
	(at person97 loc46)
	(at person98 loc77)
	(at person99 loc146)
	(at person100 loc41)
	(at person101 loc60)
	(at person102 loc53)
	(at person103 loc19)
	(at person104 loc61)
	(at person105 loc165)
	(at person106 loc19)
	(at person107 loc26)
	(at person108 loc151)
	(at person109 loc18)
	(at person110 loc135)
	(at person111 loc147)
	(at person112 loc160)
	(at person113 loc31)
	(at person114 loc134)
	(at person115 loc64)
	(at person116 loc130)
	(at person117 loc142)
	(at person118 loc165)
	(at person119 loc45)
	(at person120 loc56)
	(at person121 loc97)
	(at person122 loc111)
	(at person123 loc28)
	(at person124 loc14)
	(at person125 loc36)
	(at person126 loc143)
	(at person127 loc144)
	(at person128 loc169)
	(at person129 loc5)
	(at person130 loc156)
	(at person131 loc151)
	(at person132 loc118)
	(at person133 loc51)
	(at person134 loc140)
	(at person135 loc81)
	(at person136 loc34)
	(at person137 loc39)
	(at person138 loc125)
	(at person139 loc60)
	(at person140 loc107)
	(at person141 loc34)
	(at person142 loc42)
	(at person143 loc69)
	(at person144 loc84)
	(at person145 loc141)
	(at person146 loc109)
	(at person147 loc14)
	(at person148 loc148)
	(at person149 loc65)
	(at person150 loc93)
	(at person151 loc131)
	(at person152 loc154)
	(at person153 loc70)
	(at person154 loc46)
	(at person155 loc110)
	(at person156 loc30)
	(at person157 loc16)
	(at person158 loc83)
	(at person159 loc14)
	(at person160 loc154)
	(at person161 loc2)
	(at person162 loc46)
	(at person163 loc61)
	(at person164 loc130)
	(at person165 loc93)
	(at person166 loc100)
	(at person167 loc165)
	(at person168 loc92)
	(at person169 loc27)
	(at person170 loc85)
  )
  (:goal (and
		(at drone1 depot)
		(delivered person1 food)
		(delivered person1 medicine)
		(delivered person3 medicine)
		(delivered person4 medicine)
		(delivered person6 medicine)
		(delivered person7 food)
		(delivered person7 medicine)
		(delivered person8 food)
		(delivered person8 medicine)
		(delivered person9 medicine)
		(delivered person10 medicine)
		(delivered person11 food)
		(delivered person13 medicine)
		(delivered person14 medicine)
		(delivered person15 food)
		(delivered person15 medicine)
		(delivered person16 medicine)
		(delivered person17 food)
		(delivered person17 medicine)
		(delivered person18 medicine)
		(delivered person19 food)
		(delivered person19 medicine)
		(delivered person20 medicine)
		(delivered person21 medicine)
		(delivered person22 medicine)
		(delivered person24 food)
		(delivered person24 medicine)
		(delivered person25 medicine)
		(delivered person28 food)
		(delivered person29 medicine)
		(delivered person30 medicine)
		(delivered person31 medicine)
		(delivered person32 food)
		(delivered person32 medicine)
		(delivered person33 medicine)
		(delivered person34 medicine)
		(delivered person35 medicine)
		(delivered person36 medicine)
		(delivered person37 medicine)
		(delivered person38 food)
		(delivered person38 medicine)
		(delivered person40 medicine)
		(delivered person41 medicine)
		(delivered person42 medicine)
		(delivered person43 medicine)
		(delivered person44 medicine)
		(delivered person45 medicine)
		(delivered person46 medicine)
		(delivered person47 food)
		(delivered person47 medicine)
		(delivered person48 medicine)
		(delivered person49 medicine)
		(delivered person50 medicine)
		(delivered person52 medicine)
		(delivered person53 food)
		(delivered person53 medicine)
		(delivered person55 food)
		(delivered person55 medicine)
		(delivered person56 medicine)
		(delivered person58 medicine)
		(delivered person59 medicine)
		(delivered person60 medicine)
		(delivered person61 food)
		(delivered person61 medicine)
		(delivered person62 medicine)
		(delivered person63 medicine)
		(delivered person65 medicine)
		(delivered person66 medicine)
		(delivered person67 food)
		(delivered person67 medicine)
		(delivered person68 medicine)
		(delivered person70 medicine)
		(delivered person71 food)
		(delivered person71 medicine)
		(delivered person72 medicine)
		(delivered person74 medicine)
		(delivered person75 food)
		(delivered person77 medicine)
		(delivered person79 medicine)
		(delivered person80 medicine)
		(delivered person87 medicine)
		(delivered person88 medicine)
		(delivered person89 food)
		(delivered person89 medicine)
		(delivered person90 medicine)
		(delivered person91 medicine)
		(delivered person92 medicine)
		(delivered person94 food)
		(delivered person95 medicine)
		(delivered person96 medicine)
		(delivered person97 food)
		(delivered person97 medicine)
		(delivered person98 medicine)
		(delivered person100 medicine)
		(delivered person101 medicine)
		(delivered person102 medicine)
		(delivered person103 food)
		(delivered person103 medicine)
		(delivered person104 food)
		(delivered person104 medicine)
		(delivered person105 food)
		(delivered person105 medicine)
		(delivered person107 food)
		(delivered person108 medicine)
		(delivered person109 food)
		(delivered person110 food)
		(delivered person110 medicine)
		(delivered person112 food)
		(delivered person113 medicine)
		(delivered person114 medicine)
		(delivered person115 medicine)
		(delivered person116 medicine)
		(delivered person117 medicine)
		(delivered person118 medicine)
		(delivered person119 medicine)
		(delivered person120 food)
		(delivered person120 medicine)
		(delivered person121 medicine)
		(delivered person123 medicine)
		(delivered person124 medicine)
		(delivered person125 food)
		(delivered person125 medicine)
		(delivered person126 medicine)
		(delivered person129 food)
		(delivered person129 medicine)
		(delivered person130 medicine)
		(delivered person131 food)
		(delivered person132 food)
		(delivered person132 medicine)
		(delivered person133 food)
		(delivered person133 medicine)
		(delivered person134 medicine)
		(delivered person135 medicine)
		(delivered person136 medicine)
		(delivered person137 medicine)
		(delivered person138 medicine)
		(delivered person139 food)
		(delivered person139 medicine)
		(delivered person141 food)
		(delivered person141 medicine)
		(delivered person142 medicine)
		(delivered person144 medicine)
		(delivered person145 food)
		(delivered person145 medicine)
		(delivered person146 food)
		(delivered person147 medicine)
		(delivered person148 food)
		(delivered person148 medicine)
		(delivered person149 medicine)
		(delivered person150 medicine)
		(delivered person152 medicine)
		(delivered person153 medicine)
		(delivered person154 medicine)
		(delivered person155 food)
		(delivered person155 medicine)
		(delivered person157 medicine)
		(delivered person158 medicine)
		(delivered person161 food)
		(delivered person161 medicine)
		(delivered person163 food)
		(delivered person163 medicine)
		(delivered person164 food)
		(delivered person164 medicine)
		(delivered person165 food)
		(delivered person166 medicine)
		(delivered person167 food)
		(delivered person167 medicine)
		(delivered person168 food)
		(delivered person168 medicine)
		(delivered person169 medicine)
  ))
)
