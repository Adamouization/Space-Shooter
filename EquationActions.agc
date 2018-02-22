/* 
Contains code for creating the text place holder for the equation, including:
	- creating the text and setting its size
	- positioning the text at the bottom of the screen, centered on the y-axis
*/
CreateEquationText:

	CreateText(2, "17 + 43 = ?")
	SetTextSize(2, 50)
	equation_pos_x = (GetVirtualWidth() / 2) - (GetTextTotalWidth(2) / 2)
	equation_pos_y = GetVirtualHeight() - GetTextTotalHeight(2)
	SetTextPosition(2, equation_pos_x, equation_pos_y)
	
Return
