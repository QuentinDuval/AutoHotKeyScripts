
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
	Menu, PopUpMenu, Add, Search Youtube, SearchYoutube
	Menu, PopUpMenu, Add
	Menu, PopUpMenu, Add, Search Hoogle, SearchHoogle
	Menu, PopUpMenu, Add, Search Hackage, SearchHackage
	Menu, PopUpMenu, Add
	Menu, PopUpMenu, Add, Open folder, OpenFolder
	Menu, PopUpMenu, Show
	Menu, PopUpMenu, DeleteAll
	return	

SearchGoogle:
	Run, https://www.google.fr/#q=%clipboard%
	return
	
SearchHackage:
	Run, http://hackage.haskell.org/packages/search?terms=%clipboard%
	return

SearchHoogle:
	Run, https://www.haskell.org/hoogle/?hoogle=%clipboard%
	return
	
SearchYoutube:
	Run, https://www.youtube.com/results?search_query=%clipboard%
	return

OpenFolder:
	Run, explorer %clipboard%
	return
	
	
#n::
	Run Notepad
	return

