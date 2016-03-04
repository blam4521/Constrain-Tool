import maya.cmds as cmds
import logging
import os


class LightTool():

	def __init__( self ):

		#creates the window
		window_name = "LightingTools"
		window_title = "Lighting Tools v1.03"

		if cmds.window( window_name, q=True, exists=True ):
			cmds.deleteUI( window_name )

		my_window = cmds.window( window_name, title=window_title, sizeable=False, resizeToFitChildren=True )

		main_layout = cmds.columnLayout( adj=True )
		
		#creates the buttons
		cmds.separator()

		cmds.separator()
		
		cmds.separator()

		cmds.text( "Camera Light Constrain", bgc = (1, 0.627, 0.478) )

		cmds.separator()
		
		cmds.separator()
		
		cmds.separator()
		
		cmds.button( label="Char_Constrain", command = self.CharProp )
		
		cmds.button( label="Set_Constrain", command = self.SetLights )
	
		cmds.separator()

		cmds.separator()
		
		cmds.showWindow(my_window)

## ----------------------------------------------------------------------
	
	def CharProp( self, *args ):
		
		cam_pos = ''
		charprop_list = []

		#Iterate through the list and parent them
		for index in charprop_list:
			child = cmds.listRelatives( index, children=True )
			if len(child) > 1:
				#print len(child)
				print "Camera has constrain %s"%child[1]
				
			else:
				cmds.parentConstraint(cam_pos, index)
				#print "Camera constrainted %s"%index
		cmds.confirmDialog( title='parentConstraint', message='Check Cameras' )

## ----------------------------------------------------------------------

	def SetLights(self, *args):    
		#user input for which light rig
		result = cmds.promptDialog(
					title='Light Rig Name',
					message='Enter Name:',
					button=['OK', 'Cancel'],
					defaultButton='OK',
					cancelButton='Cancel',
					dismissString='Cancel')

		if result == 'OK':
			text_input = cmds.promptDialog( query=True, text=True )
			

			#create suffix list to hold camera names
			name_suffix = []

			#Iterate through the list and add the user input
			for index in name_suffix:
	   
				n = cmds.ls( text_input+index[0:] )
				
				try:
					child = cmds.listRelatives( n, children=True )
					if len(child) > 1:
						print "Camera has constrain %s"%child[1]
					else:
					 	cmds.parentConstraint('CAM:POS',n)
						print "Parent Constrain created"       
				 
				except NameError:
					cmds.confirmDialog( title='No Cameras', message='Reference Cameras first' )
			cmds.confirmDialog(title='parentConstraint', message='Check Cameras')

## ----------------------------------------------------------------------

if __name__ == '__main__':
	LightTool()
