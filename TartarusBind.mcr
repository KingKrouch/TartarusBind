-----------------------------------------------
-- Script Name: TartarusBind

-- Author: Bryce Q.

-- Description: Allows for different viewport binding
-- 				functionality for keypads that
--				accept input macros.

-- Usage: Add these bindings in the Hotkey Editor to your
--		  Desired input bindings/macros.

-----------------------------------------------

macroScript rotViewCamera
category:"Tartarus Bindings"
tooltip:"Toggle Camera Display on Viewport"
(
	viewportType = viewport.getType()
	
	case of
	(
		(viewportType == #view_camera): viewport.setType #view_persp_user
		default: viewport.setType #view_camera
	)
	redrawViews()
)

macroScript rotViewLeft
category:"Tartarus Bindings"
tooltip:"Rotate Viewport Left"
(
	viewportType = viewport.getType()
	
	case of
	(
		(viewportType == #view_top): viewport.setType #view_left
		(viewportType == #view_front): viewport.setType #view_left
		(viewportType == #view_left): viewport.setType #view_back
		(viewportType == #view_right): viewport.setType #view_front
		(viewportType == #view_back): viewport.setType #view_right
		(viewportType == #view_bottom): viewport.setType #view_left
		default: viewport.setType #view_left
	)
	redrawViews()
)

macroScript rotViewRight
category:"Tartarus Bindings"
tooltip:"Rotate Viewport Right"
(
	viewportType = viewport.getType()
	
	case of
	(
		(viewportType == #view_top): viewport.setType #view_right
		(viewportType == #view_front): viewport.setType #view_right
		(viewportType == #view_left): viewport.setType #view_front
		(viewportType == #view_right): viewport.setType #view_back
		(viewportType == #view_back): viewport.setType #view_left
		(viewportType == #view_bottom): viewport.setType #view_right
		default: viewport.setType #view_right
	)
	redrawViews()
)

macroScript rotViewUp
category:"Tartarus Bindings"
tooltip:"Rotate Viewport Up"
(
	viewportType = viewport.getType()
	
	case of
	(
		(viewportType == #view_top): viewport.setType #view_bottom
		(viewportType == #view_front): viewport.setType #view_top
		(viewportType == #view_left): viewport.setType #view_top
		(viewportType == #view_right): viewport.setType #view_top
		(viewportType == #view_back): viewport.setType #view_top
		(viewportType == #view_bottom): viewport.setType #view_front
		default: viewport.setType #view_top
	)
	redrawViews()
)

macroScript rotViewDown
category:"Tartarus Bindings"
tooltip:"Rotate Viewport Down"
(
	viewportType = viewport.getType()
	
	case of
	(
		(viewportType == #view_top): viewport.setType #view_front
		(viewportType == #view_front): viewport.setType #view_bottom
		(viewportType == #view_left): viewport.setType #view_bottom
		(viewportType == #view_right): viewport.setType #view_bottom
		(viewportType == #view_back): viewport.setType #view_bottom
		(viewportType == #view_bottom): viewport.setType #view_top
		default: viewport.setType #view_bottom
	)
	redrawViews()
)