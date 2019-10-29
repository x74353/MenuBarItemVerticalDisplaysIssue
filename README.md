# MenuBarItemVerticalDisplaysIssue
Sample project for macOS Bug Report FB7416376

In macOS Catalina, including the most current public release (19A603), if a user has two (2) displays connected to their Mac, and those displays are stacked vertically, menu bar items fail to display their menu when clicked. This issue is only present on the bottommost display. The issue does not occur on the topmost display. The issue does not occur at all if said displays are arranged horizontally.

**Example Display Arrangement**\
Built-in display on bottom, external display on top.\
![Example Display Arrangement](Images/SysPrefs_Displays.png)

**External (top) Display Behavior**\
![External (top) Display Behavior](Images/Topmost_External_Display.gif)

**Built-in (bottom) Display Behavior**\
![Built-in (bottom) Display Behavior](Images/Bottommost_BuiltIn_Display.gif)
