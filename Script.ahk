
; --------------------------------
; Reload the script
; --------------------------------

#f::
	send, ^s ; save the script
	Reload
	return
  
; --------------------------------
; Search mechanism
; --------------------------------

#s::
	Send, ^c
	Menu, PopUpMenu, Add, Search Google, SearchGoogle
	Menu, PopUpMenu, Add, Search Hackage, SearchHackage
	Menu, PopUpMenu, Add
	Menu, PopUpMenu, Add, Search Youtube, SearchYoutube
	Menu, PopUpMenu, Show
	Menu, PopUpMenu, DeleteAll
	return	

SearchGoogle:
	Run, https://www.google.fr/#q=%clipboard%
	return
	
SearchHackage:
	Run, http://hackage.haskell.org/packages/search?terms=%clipboard%
	return
	
SearchYoutube:
	Run, https://www.youtube.com/results?search_query=%clipboard%
	return
	
	
#n::
	Run Notepad
	return

