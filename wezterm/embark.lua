-- # EMBARK
return {


	-- [colors]
	foreground = "#CBE3E7",
	background = "#1e1c32",
	cursor_bg = "#a1efd3",
	cursor_border = "#a1efd3",
	cursor_fg = "#1e1c31",
	selection_bg = "#3e3859",
	selection_fg = "#fff",
	-- ansi = { "#1E1C31","#91DDFF","#87DFEB","#A1EFD3","#D4BFFF","#F48FB1","#CBE3E7","#FFE6B3" },
	-- brights = { "#585273","#65B2FF","#63F2F1","#62D196","#A37ACC","#F02E6E","#8A889D","#F2B482" },
	brights = {
		"#1E1C31",
		"#F48FB1", 
		"#A1EFD3", 
		"#FFE6B3", 
		"#91DDFF", 
		"#D4BFFF", 
		"#ABF8F7", 
		"#CBE3E7", 
	},
	ansi =  {
		"#585273",
		"#F02E6E",
		"#7FE9C3",
		"#F2B482",
		"#78A8FF",
		"#7676FF",
		"#63F2F1",
		"#8A889D"	
},

    tab_bar = {
        -- The color of the strip that goes along the top of the window
        -- (does not apply when fancy tab bar is in use)
        background = "#1E1C31",

        -- The active tab is the one that has focus in the window
        active_tab = {

            bg_color = "#1e1c32",
            -- bg_color = "#585273",
            fg_color = "#af87d7",
            -- Specify whether you want "Half", "Normal" or "Bold" intensity for the
            -- label shown for this tab.
            -- The default is "Normal"
            intensity = "Bold",

            -- Specify whether you want "None", "Single" or "Double" underline for
            -- label shown for this tab.
            -- The default is "None"
            underline = "None",

            -- Specify whether you want the text to be italic (true) or not (false)
            -- for this tab.  The default is false.
            italic = false,

            -- Specify whether you want the text to be rendered with strikethrough (true)
            -- or not for this tab.  The default is false.
            strikethrough = false
        },

        -- Inactive tabs are the tabs that do not have focus
        inactive_tab = {
            bg_color = "#1e1c32",
            fg_color = "#585273"

            -- The same options that were listed under the `active_tab` section above
            -- can also be used for `inactive_tab`.
        },

        -- You can configure some alternate styling when the mouse pointer
        -- moves over inactive tabs
        inactive_tab_hover = {
            bg_color = "#3e3859",
            fg_color = "#f8f8f2",
            italic = true

            -- The same options that were listed under the `active_tab` section above
            -- can also be used for `inactive_tab_hover`.
        },

        -- The new tab button that let you create new tabs
        new_tab = {
            bg_color = "#1e1c32",
            fg_color = "#1e1c32"

            -- The same options that were listed under the `active_tab` section above
            -- can also be used for `new_tab`.
        },

        -- You can configure some alternate styling when the mouse pointer
        -- moves over the new tab button
        new_tab_hover = {
            bg_color = "#1e1c32",
            fg_color = "#ebe3e7"

            -- The same options that were listed under the `active_tab` section above
            -- can also be used for `new_tab_hover`.
        }
    }

}
