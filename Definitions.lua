
--uiobject: is an object that represents a UI element, such as a frame, a texture, or a button. UIObjects are the base class for all UI elements in the WoW API.
--3D World: is an object which is placed behind|below all UI elements, cannot be parent of any object, in the 3D World object is where the game world is rendered
--size: corresponds to the height and height of an object, it is measure in pixels, must be bigger than zero.
--scale: the size of an object is multiplied by this value, it is measure in percentage, must be between 0.65 and 2.40.
--alpha: corresponds to the transparency of an object, the bigger is the value less transparent is the object, it is measure in percentage, must be between 0 and 1, zero is fully transparent and one is fully opaque.


---@class _G
---@field RegisterAttributeDriver fun(statedriver: frame, attribute: string, conditional: string)
---@field RegisterStateDriver fun(statedriver: frame, attribute: string, conditional: string)
---@field UnitGUID fun(unit: unit): string
---@field UnitName fun(unit: unit): string
---@field GetCursorPosition fun(): number, number return the position of the cursor on the screen, in pixels, relative to the bottom left corner of the screen.

---@class unixtime : number const

---@class timer : table
---@field Cancel fun(self: timer)
---@field IsCancelled fun(self: timer): boolean

---@class C_Timer
---@field After fun(delay: number, func: function)
---@field NewTimer fun(delay: number, func: function): timer
---@field NewTicker fun(interval: number, func: function, iterations: number|nil): timer

---@class red : number color value representing the red component of a color, the value must be between 0 and 1. To retrieve a color from a string or table use: local red, green, blue, alpha = DetailsFramework:ParseColors(color)
---@class green : number color value representing the green component of a color, the value must be between 0 and 1. To retrieve a color from a string or table use: local red, green, blue, alpha = DetailsFramework:ParseColors(color)
---@class blue : number color value representing the blue component of a color, the value must be between 0 and 1. To retrieve a color from a string or table use: local red, green, blue, alpha = DetailsFramework:ParseColors(color)
---@class alpha : number @number(0-1.0) value representing the alpha (transparency) of a UIObject, the value must be between 0 and 1. 0 is fully transparent, 1 is fully opaque.
---@class color : table, string @table(r: red|number, g: green|number, b: blue|number, a: alpha|number) @string(color name) @hex (000000-ffffff) value representing a color, the value must be a table with the following fields: r, g, b, a. r, g, b are numbers between 0 and 1, a is a number between 0 and 1. To retrieve a color from a string or table use: local red, green, blue, alpha = DetailsFramework:ParseColors(color)
---@class scale : number @number(0.65-2.40) value representing the scale factor of the UIObject, the value must be between 0.65 and 2.40, the width and height of the UIObject will be multiplied by this value.
---@class texture : string, number is an object that represents a graphical image. Textures are used to display visual elements such as icons, backgrounds, borders, and more.
---@class frame : uiobject represents a container for other UI elements, such as textures, buttons, text, and more.
---@class width : number property that represents the horizontal size of a UI element, such as a frame or a texture.
---@class height : number property that represents the vertical size of a UI element, such as a frame or a texture.
---@class script : string, function is a piece of code that is executed in response to a specific event, such as a button click or a frame update. Scripts can be used to implement behavior and logic for UI elements.
---@class event : string is a notification that is sent to a frame when something happens, such as a button click or a frame update. Events can be used to trigger scripts.
---@class framestrata : string @string(BACKGROUND, LOW, MEDIUM, HIGH, DIALOG, FULLSCREEN, FULLSCREEN_DIALOG, TOOLTIP) property that determines the stacking order of frames. Higher strata values indicate frames that should be displayed on top of frames with lower strata values.
---@class backdrop : table @table(bgFile: string, edgeFile: string, tile: edgeSize: number, backgroundColor: color, borderColor: color) is a table that contains information about the backdrop of a frame. The backdrop is the background of a frame, which can be a solid color, a gradient, or a texture.
---@class unit : string string that represents a unit in the game, such as the player, a party member, or a raid member.
---@class health : number amount of hit points (health) of a unit. This value can be changed by taking damage or healing.
---@class role : string @string(TANK, HEALER, DAMAGER, NONE) is a string that represents the role of a unit, such as tank, healer, or damage dealer.
---@class point : string @string(topleft, topright, bottomleft, bottomright, top, bottom, left, right, center) is a string that represents a point on a frame. Points are used to position frames relative to each other.

---@class uiobject
---@field Show fun(self: uiobject) make the object be shown on the user screen
---@field Hide fun(self: uiobject) make the object be hidden from the user screen
---@field SetShown fun(self: uiobject, state: boolean) show or hide the object
---@field IsShown fun(self: uiobject) : boolean return if the object is shown or not
---@field SetAllPoints fun(self: uiobject) set the object to be the same size as its parent
---@field SetParent fun(self: uiobject, parent: frame) set the parent object of the object
---@field SetSize fun(self: uiobject, width: width|number, height: height|number) set the width and height of the object
---@field SetWidth fun(self: uiobject, width: width|number) set only the width of the object
---@field SetHeight fun(self: uiobject, height: height|number) set only the height of the object
---@field SetAlpha fun(self: uiobject, alpha: alpha|number) set the transparency of the object
---@field SetScale fun(self: uiobject, scale: scale|number)
---@field GetWidth fun(self: uiobject) : width|number
---@field GetHeight fun(self: uiobject) : height|number
---@field GetScale fun(self: uiobject) : scale|number
---@field GetAlpha fun(self: uiobject) : alpha|number
---@field GetSize fun(self: uiobject) : width|number, height|number
---@field GetParent fun(self: uiobject) : frame
---@field GetPoint fun(self: uiobject, index: number): string, frame, string, number, number
---@field GetCenter fun(self: uiobject): number, number
---@field SetPoint fun(self: uiobject, point: "topleft"|"topright"|"bottomleft"|"bottomright"|"top"|"bottom"|"left"|"right"|"center", relativeFrame: uiobject, relativePoint: "topleft"|"topright"|"bottomleft"|"bottomright"|"top"|"bottom"|"left"|"right"|"center", xOffset: number, yOffset: number)
---@field ClearAllPoints fun(self: uiobject)
---@field CreateAnimationGroup fun(self: uiobject, name: string|nil, templateName: string|nil) : animationgroup

---@class animationgroup : uiobject
---@field CreateAnimation fun(self: animationgroup, animationType: string, name: string|nil, inheritsFrom: string|nil) : animation
---@field GetAnimation fun(self: animationgroup, name: string) : animation
---@field GetAnimations fun(self: animationgroup) : table
---@field GetDuration fun(self: animationgroup) : number
---@field GetEndDelay fun(self: animationgroup) : number
---@field GetLoopState fun(self: animationgroup) : boolean
---@field GetScript fun(self: animationgroup, event: string) : function
---@field GetSmoothProgress fun(self: animationgroup) : boolean
---@field IsDone fun(self: animationgroup) : boolean
---@field IsPaused fun(self: animationgroup) : boolean
---@field IsPlaying fun(self: animationgroup) : boolean
---@field Pause fun(self: animationgroup)
---@field Play fun(self: animationgroup)
---@field Resume fun(self: animationgroup)
---@field SetDuration fun(self: animationgroup, duration: number)
---@field SetEndDelay fun(self: animationgroup, delay: number)
---@field SetLooping fun(self: animationgroup, loop: boolean)
---@field SetScript fun(self: animationgroup, event: string, handler: function) "OnEvent"|"OnShow"
---@field SetSmoothProgress fun(self: animationgroup, smooth: boolean)
---@field Stop fun(self: animationgroup)

---@class animation : uiobject
---@field GetDuration fun(self: animation) : number
---@field GetEndDelay fun(self: animation) : number
---@field GetOrder fun(self: animation) : number
---@field GetScript fun(self: animation, event: string) : function
---@field GetSmoothing fun(self: animation) : string
---@field IsDone fun(self: animation) : boolean
---@field IsPaused fun(self: animation) : boolean
---@field IsPlaying fun(self: animation) : boolean
---@field Pause fun(self: animation)
---@field Play fun(self: animation)
---@field Resume fun(self: animation)
---@field SetDuration fun(self: animation, duration: number)
---@field SetEndDelay fun(self: animation, delay: number)
---@field SetOrder fun(self: animation, order: number)
---@field SetScript fun(self: animation, event: string, handler: function)
---@field SetSmoothing fun(self: animation, smoothing: string)
---@field Stop fun(self: animation)

---@class frame : uiobject
---@field SetAttribute fun(self: frame, name: string, value: any)
---@field SetScript fun(self: frame, event: string, handler: function)
---@field GetScript fun(self: frame, event: string) : function
---@field SetFrameStrata fun(self: frame, strata: framestrata|"background"|"low"|"medium"|"high"|"dialog"|"fullscreen"|"fullscreen_dialog"|"tooltip")
---@field SetFrameLevel fun(self: frame, level: number)
---@field SetClampedToScreen fun(self: frame, clamped: boolean)
---@field SetClampRectInsets fun(self: frame, left: number, right: number, top: number, bottom: number)
---@field SetMovable fun(self: frame, movable: boolean)
---@field SetUserPlaced fun(self: frame, userPlaced: boolean)
---@field SetBackdrop fun(self: frame, backdrop: backdrop|table)
---@field SetBackdropColor fun(self: frame, red: red|number, green: green|number, blue: blue|number, alpha: alpha|number)
---@field SetBackdropBorderColor fun(self: frame, red: red|number, green: green|number, blue: blue|number, alpha: alpha|number)
---@field SetHitRectInsets fun(self: frame, left: number, right: number, top: number, bottom: number)
---@field SetToplevel fun(self: frame, toplevel: boolean)
---@field SetPropagateKeyboardInput fun(self: frame, propagate: boolean)
---@field SetPropagateGamepadInput fun(self: frame, propagate: boolean)
---@field StartMoving fun(self: frame)
---@field StartSizing fun(self: frame, point: "top"|"topright"|"right"|"bottomright"|"bottom"|"bottomleft"|"left"|"topleft")
---@field StopMovingOrSizing fun(self: frame)
---@field GetAttribute fun(self: frame, name: string) : any
---@field GetFrameLevel fun(self: frame) : number
---@field GetFrameStrata fun(self: frame) : framestrata|string
---@field GetNumChildren fun(self: frame) : number
---@field GetNumPoints fun(self: frame) : number
---@field GetNumRegions fun(self: frame) : number
---@field GetName fun(self: frame) : string
---@field GetObjectType fun(self: frame) : string
---@field GetChildren fun(self: frame) : frame[]
---@field GetRegions fun(self: frame) : region[]
---@field CreateTexture fun(self: frame, name: string|nil, layer: "background"|"border"|"artwork"|"overlay"|"highlight", inherits: string|nil, subLayer: number|nil) : texture
---@field CreateFontString fun(self: frame, name: string|nil, layer: "background"|"border"|"artwork"|"overlay"|"highlight", inherits: string|nil, subLayer: number|nil) : fontstring
---@field EnableMouse fun(self: frame, enable: boolean)
---@field SetResizable fun(self: frame, enable: boolean)
---@field EnableMouseWheel fun(self: frame, enable: boolean)
---@field RegisterForDrag fun(self: frame, button: string)
---@field SetResizeBounds fun(self: frame, minWidth: number, minHeight: number, maxWidth: number, maxHeight: number)

---@class button : frame
---@field SetNormalTexture fun(self: button, texture: texture)
---@field SetPushedTexture fun(self: button, texture: texture)
---@field SetHighlightTexture fun(self: button, texture: texture)
---@field SetDisabledTexture fun(self: button, texture: texture)
---@field SetCheckedTexture fun(self: button, texture: texture)
---@field SetNormalFontObject fun(self: button, fontString: fontstring)
---@field SetHighlightFontObject fun(self: button, fontString: fontstring)
---@field SetDisabledFontObject fun(self: button, fontString: fontstring)
---@field SetText fun(self: button, text: string)
---@field GetText fun(self: button) : string
---@field SetTextInsets fun(self: button, left: number, right: number, top: number, bottom: number)
---@field GetTextInsets fun(self: button) : number, number, number, number
---@field SetDisabledTextColor fun(self: button, r: red|number, g: green|number, b: blue|number, a: alpha|number)
---@field GetDisabledTextColor fun(self: button) : number, number, number, number
---@field SetFontString fun(self: button, fontString: fontstring)
---@field GetFontString fun(self: button) : fontstring
---@field SetButtonState fun(self: button, state: string, enable: boolean)
---@field GetButtonState fun(self: button, state: string) : boolean
---@field RegisterForClicks fun(self: button, button1: nil|"AnyUp"|"AnyDown"|"LeftButtonDown"|"LeftButtonUp"|"MiddleButtonUp"|"MiddleButtonDown"|"RightButtonDown"|"RightButtonUp"|"Button4Up"|"Button4Down"|"Button5Up"|"Button5Down", button2: nil|"AnyUp"|"AnyDown"|"LeftButtonDown"|"LeftButtonUp"|"MiddleButtonUp"|"MiddleButtonDown"|"RightButtonDown"|"RightButtonUp"|"Button4Up"|"Button4Down"|"Button5Up"|"Button5Down")
---@field GetNormalTexture fun(self: button) : texture
---@field GetPushedTexture fun(self: button) : texture
---@field GetHighlightTexture fun(self: button) : texture
---@field GetDisabledTexture fun(self: button) : texture

---@class statusbar : frame
---@field SetStatusBarColor fun(self: statusbar, r: red|number, g: green|number, b: blue|number, a: alpha|number)
---@field SetStatusBarTexture fun(self: statusbar, path: string)
---@field SetMinMaxValues fun(self: statusbar, minValue: number, maxValue: number)
---@field SetValue fun(self: statusbar, value: number)
---@field SetValueStep fun(self: statusbar, valueStep: number)
---@field SetOrientation fun(self: statusbar, orientation: string)
---@field SetReverseFill fun(self: statusbar, reverseFill: boolean)
---@field GetMinMaxValues fun(self: statusbar) : number, number
---@field GetValue fun(self: statusbar) : number
---@field GetValueStep fun(self: statusbar) : number
---@field GetOrientation fun(self: statusbar) : string
---@field GetReverseFill fun(self: statusbar) : boolean

---@class region : uiobject

---@class fontstring : region
---@field SetDrawLayer fun(self: fontstring, layer: "background"|"border"|"artwork"|"overlay"|"highlight", subLayer: number|nil)
---@field SetFont fun(self: fontstring, font: string, size: number, flags: string)
---@field SetText fun(self: fontstring, text: string|number)
---@field GetText fun(self: fontstring) : string
---@field GetFont fun(self: fontstring) : string, number, string
---@field GetStringWidth fun(self: fontstring) : number return the width of the string in pixels
---@field SetShadowColor fun(self: fontstring, r: red|number, g: green|number, b: blue|number, a: alpha|number)
---@field GetShadowColor fun(self: fontstring) : number, number, number, number
---@field SetShadowOffset fun(self: fontstring, offsetX: number, offsetY: number)
---@field GetShadowOffset fun(self: fontstring) : number, number
---@field SetTextColor fun(self: fontstring, r: red|number, g: green|number, b: blue|number, a: alpha|number)
---@field GetTextColor fun(self: fontstring) : number, number, number, number
---@field SetJustifyH fun(self: fontstring, justifyH: string)
---@field GetJustifyH fun(self: fontstring) : string
---@field SetJustifyV fun(self: fontstring, justifyV: string)
---@field GetJustifyV fun(self: fontstring) : string
---@field SetNonSpaceWrap fun(self: fontstring, nonSpaceWrap: boolean)
---@field GetNonSpaceWrap fun(self: fontstring) : boolean
---@field SetIndentedWordWrap fun(self: fontstring, indentedWordWrap: boolean)
---@field GetIndentedWordWrap fun(self: fontstring) : boolean
---@field SetMaxLines fun(self: fontstring, maxLines: number)
---@field GetMaxLines fun(self: fontstring) : number
---@field SetWordWrap fun(self: fontstring, wordWrap: boolean)
---@field GetWordWrap fun(self: fontstring) : boolean
---@field SetSpacing fun(self: fontstring, spacing: number)
---@field GetSpacing fun(self: fontstring) : number
---@field SetLineSpacing fun(self: fontstring, lineSpacing: number)
---@field GetLineSpacing fun(self: fontstring) : number
---@field SetMaxLetters fun(self: fontstring, maxLetters: number)
---@field GetMaxLetters fun(self: fontstring) : number
---@field SetTextInsets fun(self: fontstring, left: number, right: number, top: number, bottom: number)
---@field GetTextInsets fun(self: fontstring) : number, number, number, number
---@field SetTextJustification fun(self: fontstring, justifyH: string, justifyV: string)
---@field GetTextJustification fun(self: fontstring) : string, string
---@field SetTextShadowColor fun(self: fontstring, r: red|number, g: green|number, b: blue|number, a: alpha|number)
---@field GetTextShadowColor fun(self: fontstring) : number, number, number, number
---@field SetTextShadowOffset fun(self: fontstring, offsetX: number, offsetY: number)
---@field GetTextShadowOffset fun(self: fontstring) : number, number
---@field SetTextShadow fun(self: fontstring, offsetX: number, offsetY: number, r: red|number, g: green|number, b: blue|number, a: alpha|number)
---@field SetTextTruncate fun(self: fontstring, truncate: string)
---@field GetTextTruncate fun(self: fontstring) : string
---@field SetTextTruncateWidth fun(self: fontstring, width: number)
---@field GetTextTruncateWidth fun(self: fontstring) : number
---@field SetTextTruncateLines fun(self: fontstring, lines: number)
---@field GetTextTruncateLines fun(self: fontstring) : number

---@class texture : region
---@field SetDrawLayer fun(self: texture, layer: "background"|"border"|"artwork"|"overlay"|"highlight", subLayer: number|nil)
---@field SetTexture fun(self: texture, path: string)
---@field SetColorTexture fun(self: texture, r: red|number, g: green|number, b: blue|number, a: alpha|number)
---@field SetDesaturated fun(self: texture, desaturate: boolean)
---@field SetBlendMode fun(self: texture, mode: "ADD"|"BLEND"|"DISABLE"|"MOD"|"MOD2X"|"OVERLAY"|"REPLACE"|"SUBTRACT")
---@field SetVertexColor fun(self: texture, r: red|number, g: green|number, b: blue|number, a: alpha|number)
---@field GetPoint fun(self: texture, index: number) : string, table, string, number, number
---@field SetShown fun(self: texture, state: boolean)
---@field IsShown fun(self: texture) : boolean
---@field GetParent fun(self: texture) : table
---@field SetTexCoord fun(self: texture, left: number, right: number, top: number, bottom: number)
---@field GetTexCoord fun(self: texture) : number, number, number, number
---@field SetRotation fun(self: texture, rotation: number)
---@field GetRotation fun(self: texture) : number
---@field SetRotationRadians fun(self: texture, rotation: number)
---@field GetRotationRadians fun(self: texture) : number
---@field SetRotationDegrees fun(self: texture, rotation: number)
---@field GetRotationDegrees fun(self: texture) : number
---@field SetMask fun(self: texture, mask: table)
---@field GetMask fun(self: texture) : table
---@field SetMaskTexture fun(self: texture, maskTexture: table)
---@field GetMaskTexture fun(self: texture) : table
---@field GetDesaturated fun(self: texture) : boolean
---@field SetGradient fun(self: texture, gradient: string)
---@field GetGradient fun(self: texture) : string
---@field SetGradientAlpha fun(self: texture, gradient: string)
---@field GetGradientAlpha fun(self: texture) : string
---@field SetGradientRotation fun(self: texture, rotation: number)
---@field GetGradientRotation fun(self: texture) : number
---@field SetGradientRotationRadians fun(self: texture, rotation: number)
---@field GetGradientRotationRadians fun(self: texture) : number
---@field SetGradientRotationDegrees fun(self: texture, rotation: number)
---@field GetGradientRotationDegrees fun(self: texture) : number
---@field SetGradientColors fun(self: texture, ...)
---@field GetGradientColors fun(self: texture) : number, number, number, number, number, number, number, number, number, number, number, number
---@field GetBlendMode fun(self: texture) : string
---@field GetVertexColor fun(self: texture) : number, number, number, number







---@class details
---@field GetInstance fun(self: details) : instance
---@field GetCombat fun(self: details) : combat
---@field GetSpellSchoolFormatedName fun(self: details, spellschool: number) : string
---@field CommaValue fun(self: details, number: number) : string
---@field SumSpellTables fun(self: details, spellTables: spelltable[], targetTable: table)
---@field CreateEventListener fun(self: details) : table

---@class detailseventlistener : table
---@field RegisterEvent fun(self: detailseventlistener, event: "DETAILS_INSTANCE_OPEN"|"DETAILS_INSTANCE_CLOSE"|"DETAILS_INSTANCE_SIZECHANGED"|"DETAILS_INSTANCE_STARTRESIZE"|"DETAILS_INSTANCE_ENDRESIZE"|"DETAILS_INSTANCE_STARTSTRETCH"|"DETAILS_INSTANCE_ENDSTRETCH"|"DETAILS_INSTANCE_CHANGESEGMENT"|"DETAILS_INSTANCE_CHANGEATTRIBUTE"|"DETAILS_INSTANCE_CHANGEMODE"|"DETAILS_INSTANCE_NEWROW"|"DETAILS_OPTIONS_MODIFIED"|"DETAILS_DATA_RESET"|"DETAILS_DATA_SEGMENTREMOVED"|"COMBAT_ENCOUNTER_START"|"COMBAT_ENCOUNTER_END"|"COMBAT_PLAYER_ENTER"|"COMBAT_PLAYER_LEAVE"|"COMBAT_PLAYER_TIMESTARTED"|"COMBAT_BOSS_WIPE"|"COMBAT_BOSS_DEFEATED"|"COMBAT_BOSS_FOUND"|"COMBAT_INVALID"|"COMBAT_PREPOTION_UPDATED"|"COMBAT_CHARTTABLES_CREATING"|"COMBAT_CHARTTABLES_CREATED"|"COMBAT_ENCOUNTER_PHASE_CHANGED"|"COMBAT_ARENA_START"|"COMBAT_ARENA_END"|"COMBAT_MYTHICDUNGEON_START"|"COMBAT_MYTHICDUNGEON_END"|"GROUP_ONENTER"|"GROUP_ONLEAVE"|"ZONE_TYPE_CHANGED"|"REALM_CHANNEL_ENTER"|"REALM_CHANNEL_LEAVE"|"COMM_EVENT_RECEIVED"|"COMM_EVENT_SENT"|"UNIT_SPEC"|"UNIT_TALENTS"|"PLAYER_TARGET"|"DETAILS_PROFILE_APPLYED", callback: function)
---@field UnregisterEvent fun(self: detailseventlistener, event: "DETAILS_INSTANCE_OPEN"|"DETAILS_INSTANCE_CLOSE"|"DETAILS_INSTANCE_SIZECHANGED"|"DETAILS_INSTANCE_STARTRESIZE"|"DETAILS_INSTANCE_ENDRESIZE"|"DETAILS_INSTANCE_STARTSTRETCH"|"DETAILS_INSTANCE_ENDSTRETCH"|"DETAILS_INSTANCE_CHANGESEGMENT"|"DETAILS_INSTANCE_CHANGEATTRIBUTE"|"DETAILS_INSTANCE_CHANGEMODE"|"DETAILS_INSTANCE_NEWROW"|"DETAILS_OPTIONS_MODIFIED"|"DETAILS_DATA_RESET"|"DETAILS_DATA_SEGMENTREMOVED"|"COMBAT_ENCOUNTER_START"|"COMBAT_ENCOUNTER_END"|"COMBAT_PLAYER_ENTER"|"COMBAT_PLAYER_LEAVE"|"COMBAT_PLAYER_TIMESTARTED"|"COMBAT_BOSS_WIPE"|"COMBAT_BOSS_DEFEATED"|"COMBAT_BOSS_FOUND"|"COMBAT_INVALID"|"COMBAT_PREPOTION_UPDATED"|"COMBAT_CHARTTABLES_CREATING"|"COMBAT_CHARTTABLES_CREATED"|"COMBAT_ENCOUNTER_PHASE_CHANGED"|"COMBAT_ARENA_START"|"COMBAT_ARENA_END"|"COMBAT_MYTHICDUNGEON_START"|"COMBAT_MYTHICDUNGEON_END"|"GROUP_ONENTER"|"GROUP_ONLEAVE"|"ZONE_TYPE_CHANGED"|"REALM_CHANNEL_ENTER"|"REALM_CHANNEL_LEAVE"|"COMM_EVENT_RECEIVED"|"COMM_EVENT_SENT"|"UNIT_SPEC"|"UNIT_TALENTS"|"PLAYER_TARGET"|"DETAILS_PROFILE_APPLYED")

---@class combat : table
---@field GetCombatTime fun(combat)
---@field GetDeaths fun(combat) --get the table which contains the deaths of the combat
---@field end_time number
---@field start_time number
---@field GetStartTime fun(combat: combat, time: number)
---@field SetStartTime fun(combat: combat, time: number)
---@field GetEndTime fun(combat: combat, time: number)
---@field SetEndTime fun(combat: combat, time: number)
---@field CopyDeathsFrom fun(combat1: combat, combat2: combat, bMythicPlus: boolean) copy the deaths from combat2 to combat1, use true on bMythicPlus if the combat is from a mythic plus run
---@field GetContainer fun(combat: combat, containerType: number) get an actor container, containerType can be 1 for damage, 2 heal, 3 energy, 4 utility
---@field GetSpellCastAmount fun(combat: combat, actorName: string, spellId: number) get the amount of times a spell was casted
---@field GetSpellUptime fun(combat: combat, actorName: string, spellId: number, auraType: string|nil) get the uptime of a buff or debuff
---@field is_mythic_dungeon_trash boolean
---@field is_mythic_dungeon_run_id number
---@field is_mythic_dungeon_segment boolean

---@class actorcontainer : table
---@field _ActorTable table
---@field _NameIndexTable table
---@field GetActor fun(container: actorcontainer, actorName: string) get an actor by its name
---@field GetSpellSource fun(container: actorcontainer, spellId: number) get the first actor found which casted the spell
---@field GetAmount fun(container: actorcontainer, actorName: string, key: string) get the amount of actor[key]
---@field GetTotal fun(container: actorcontainer, key: string) get the total amount of actor[key] for all actors
---@field GetTotalOnRaid fun(container: actorcontainer, key: string, combat: combat) get the total amount of actor[key] only for the actors which are in the raid
---@field GetActorTable fun(container: actorcontainer) get the table<actorIndex, actorObject> which contains the actors
---@field ListActors fun(container: actorcontainer) usage: for index, actorObject in container:ListActors() do

---@class spellcontainer : table
---@field GetSpell fun(container: spellcontainer, spellId: number) get a spell by its id
---@field _ActorTable table

---@class spelltable : table
---@field uptime number
---@field total number
---@field spellschool number
---@field counter number amount of hits
---@field c_amt number critical hits by a damage or heal spell
---@field c_min number min damage or healing done by critical hits of the spell
---@field c_max number min damage or healing done by critical hits of the spell
---@field c_total number total damage or heal made by critical hits of the spell
---@field n_amt number normal hits by a damage or heal spell
---@field n_min number min damage or healing done by normal hits of the spell
---@field n_max number min damage or healing done by normal hits of the spell
---@field n_total number total damage or heal made by normal hits of the spell
---@field targets table<string, number> store the [target name] = total value
---@field targets_overheal table<string, number>
---@field targets_absorbs table<string, number>
---@field id number --spellid
---@field is_shield boolean --true if the spell is a shield
---@field successful_casted number successful casted times (only for enemies)
---@field g_amt number glacing hits
---@field g_dmg number
---@field r_amt number --resisted
---@field r_dmg number
---@field b_amt number --blocked
---@field b_dmg number
---@field a_amt number --absorved
---@field a_dmg number
---@field totalabsorb number healing absorbed
---@field absorbed number damage absorbed by shield | healing absorbed by buff or debuff
---@field overheal number
---@field totaldenied number


---@class actor : table
---@field GetSpellContainer fun(actor: actor, containerType: string)
---@field Name fun(actor: actor) : string get the name of the actor
---@field Tempo fun(actor: actor) : number get the activity or effective time of the actor
---@field GetPets fun(actor: actor) : table<number, string> get a table with all pet names that belong to the player
---@field GetSpellList fun(actor: actor) : table<number, spelltable>
---@field BuildSpellTargetFromBreakdownSpellData fun(actor: actor, bkSpellData: breakdownspelldata) : table
---@field BuildSpellTargetFromSpellTable fun(actor: actor, spellTable: spelltable) : table
---@field debuff_uptime_spells table
---@field buff_uptime_spells table
---@field spells table
---@field cooldowns_defensive_spells table
---@field nome string
---@field serial string
---@field spec number
---@field grupo boolean
---@field fight_component boolean
---@field boss_fight_component boolean
---@field boss boolean
---@field last_event unixtime
---@field total_without_pet number
---@field total number
---@field spell_cast table<number, number>
---@field pets table<number, string>

---@class segmentid : number
---@class instanceid : number
---@class attributeid : number
---@class modeid : number

---@class instance : table
---@field segmento segmentid
---@field showing combat
---@field meu_id instanceid
---@field is_interacting boolean
---@field modo modeid
---@field atributo attributeid
---@field sub_atributo attributeid
---@field ativa boolean
---@field freezed boolean
---@field sub_atributo_last table
---@field GetInstanceGroup fun() : table
---@field GetCombat fun(instance: instance)
---@field ChangeIcon fun(instance: instance)
---@field CheckIntegrity fun(instance: instance)
---@field SetMode fun(instance: instance, mode: modeid)
---@field GetMode fun(instance: instance) : modeid
---@field IsInteracting fun(instance: instance) : boolean
---@field IsLowerInstance fun(instance: instance) : boolean
---@field IsEnabled fun(instance: instance) : boolean
---@field GetId fun(instance: instance) : instanceid
---@field GetSegmentId fun(instance: instance) : segmentid
---@field RefreshCombat fun(instance: instance)
---@field Freeze fun(instance: instance)
---@field UnFreeze fun(instance: instance)
---@field SetSegment fun(instance: instance, segment: segmentid, force: boolean|nil)
---@field GetDisplay fun(instance: instance) : attributeid, attributeid
---@field ResetWindow fun(instance: instance, resetType: number|nil, segmentId: segmentid|nil)
---@field RefreshData fun(instance: instance, force: boolean|nil)
---@field RefreshWindow fun(instance: instance, force: boolean|nil)

---@class breakdownscrolldata : table
---@field totalValue number total done by the actor
---@field combatTime number
---@field [breakdownspelldata] breakdownspelldata indexed part of the table

---@class breakdownexpandbutton : button
---@field texture texture

---@class breakdownspellscrollframe : frame
---@field Header frame



---@class breakdownspellbar : button
---@field index number
---@field rank number
---@field spellId number
---@field name string
---@field combatTime number
---@field perSecond number
---@field percent number
---@field amountCasts number
---@field average number
---@field castAverage number
---@field onMouseUpTime number GetTime() of when the spellbar got OnMouseUp event
---@field cursorPosX number mouse position when the spellbar got OnMouseDown event
---@field cursorPosY number mouse position when the spellbar got OnMouseDown event
---@field spellTable spelltable
---@field bkSpellData breakdownspelldata
---@field statusBar statusbar
---@field expandButton breakdownexpandbutton
---@field spellIconFrame frame
---@field spellIcon texture
---@field targetsSquareFrame breakdowntargetframe
---@field targetsSquareTexture texture
---@field overlayTexture texture
---@field bIsExpandedSpell boolean
---@field ExpandedChildren breakdownspellbar[] store the spellbars which are expanded from this spellbar (spellbars shown when the expand button is pressed)
---@field InLineTexts fontstring[]
---@field AddFrameToHeaderAlignment fun(self: breakdownspellbar, frame: uiobject)
---@field AlignWithHeader fun(self: breakdownspellbar, header: table, align: string|"left")

---@class breakdownspelldata : table
---@field id number main spellId to be used on the tooltip, name and icon
---@field total number total done by the spell
---@field counter number amount of hits
---@field spellschool number the school of the spell
---@field expanded boolean if is true the show the nested spells
---@field spellTables spelltable[]
---@field spellIds number[]
---@field petNames string[]
---@field bCanExpand boolean
---@field expandedIndex number
---@field bIsExpanded boolean
---@field c_amt number critical hits
---@field c_min number
---@field c_max number
---@field c_total number
---@field n_amt number normal hits
---@field n_total number total damage made by normal hits
---@field n_min number min damage made by normal hits
---@field n_max number max damage made by normal hits
---@field successful_casted number successful casted times (only for enemies)
---@field g_amt number glacing hits
---@field g_dmg number
---@field r_amt number --resisted
---@field r_dmg number
---@field b_amt number --blocked
---@field b_dmg number
---@field a_amt number --absorved
---@field a_dmg number

---@class breakdowntargetframe : frame
---@field spellId number
---@field bkSpellData breakdownspelldata
---@field spellTable spelltable
---@field texture texture
---@field bIsMainLine boolean

---@class breakdownspelldatalist : breakdownspelldata[]
---@field totalValue number
---@field combatTime number

---@class tabframe : frame this is the tab frame object for the breakdown window

---@class breakdownspellblockcontainer : frame container for the spellblocks in the breakdown window
---@field SpellBlocks breakdownspellblock[]
---@field UpdateBlocks fun(self: breakdownspellblockcontainer)
---@field ClearBlocks fun(self: breakdownspellblockcontainer)
---@field GetBlock fun(self: breakdownspellblockcontainer, index: number) : breakdownspellblock

---@class breakdownspellblock : statusbar breakdownspellblock object which is created inside the breakdownspellblockcontainer
---@field Lines breakdownspellblockline[]
---@field reportButton button
---@field overlay texture
---@field sparkTexture texture
---@field gradientTexture texture
---@field GetLine fun(self: breakdownspellblock, index: number) : breakdownspellblockline
---@field GetLines fun(self: breakdownspellblock) : breakdownspellblockline, breakdownspellblockline, breakdownspellblockline

---@class breakdownspellblockline : frame a line inside a breakdownspellblock, there's 3 of them in each breakdownspellblock
---@field leftText fontstring
---@field centerText fontstring
---@field rightText fontstring





