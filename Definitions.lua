
---@class _G
---@field RegisterAttributeDriver fun(statedriver: frame, attribute: string, conditional: string)
---@field RegisterStateDriver fun(statedriver: frame, attribute: string, conditional: string)
---@field UnitGUID fun(unit: unit): string
---@field UnitName fun(unit: unit): string

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
---@class frame : UIObject represents a container for other UI elements, such as textures, buttons, text, and more.
---@class width : number property that represents the horizontal size of a UI element, such as a frame or a texture.
---@class height : number property that represents the vertical size of a UI element, such as a frame or a texture.
---@class script : string, function is a piece of code that is executed in response to a specific event, such as a button click or a frame update. Scripts can be used to implement behavior and logic for UI elements.
---@class event : string is a notification that is sent to a frame when something happens, such as a button click or a frame update. Events can be used to trigger scripts.
---@class framestrata : string @string(BACKGROUND, LOW, MEDIUM, HIGH, DIALOG, FULLSCREEN, FULLSCREEN_DIALOG, TOOLTIP) property that determines the stacking order of frames. Higher strata values indicate frames that should be displayed on top of frames with lower strata values.
---@class backdrop : table @table(bgFile: string, edgeFile: string, tile: edgeSize: number, backgroundColor: color, borderColor: color) is a table that contains information about the backdrop of a frame. The backdrop is the background of a frame, which can be a solid color, a gradient, or a texture.
---@class unit : string string that represents a unit in the game, such as the player, a party member, or a raid member.
---@class health : number amount of hit points (health) of a unit. This value can be changed by taking damage or healing.
---@class role : string @string(TANK, HEALER, DAMAGER, NONE) is a string that represents the role of a unit, such as tank, healer, or damage dealer.

---@class UIObject
---@field Show fun(self: UIObject)
---@field Hide fun(self: UIObject)
---@field SetShown fun(self: UIObject, state: boolean)
---@field IsShown fun(self: UIObject) : boolean
---@field SetAllPoints fun(self: UIObject)
---@field SetParent fun(self: UIObject, parent: frame)
---@field SetSize fun(self: UIObject, width: width|number, height: height|number)
---@field SetWidth fun(self: UIObject, width: width|number)
---@field SetHeight fun(self: UIObject, height: height|number)
---@field SetAlpha fun(self: UIObject, alpha: alpha|number)
---@field SetScale fun(self: UIObject, scale: scale|number)
---@field GetWidth fun(self: UIObject) : width|number
---@field GetHeight fun(self: UIObject) : height|number
---@field GetScale fun(self: UIObject) : scale|number
---@field GetAlpha fun(self: UIObject) : alpha|number
---@field GetSize fun(self: UIObject) : width|number, height|number
---@field GetParent fun(self: UIObject) : frame
---@field GetPoint fun(self: UIObject, index: number): string, frame, string, number, number
---@field SetPoint fun(self: UIObject, point: string, relativeFrame: frame, relativePoint: string, xOffset: number, yOffset: number)
---@field ClearAllPoints fun(self: UIObject)
---@field CreateAnimationGroup fun(self: UIObject, name: string|nil, templateName: string|nil) : animationgroup

---@class animationgroup : UIObject
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
---@field SetScript fun(self: animationgroup, event: string, handler: function)
---@field SetSmoothProgress fun(self: animationgroup, smooth: boolean)
---@field Stop fun(self: animationgroup)

---@class animation : UIObject
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

---@class frame : UIObject
---@field SetAttribute fun(self: frame, name: string, value: any)
---@field SetScript fun(self: frame, event: string, handler: function)
---@field GetScript fun(self: frame, event: string) : function
---@field SetFrameStrata fun(self: frame, strata: framestrata|string)
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
---@field CreateTexture fun(self: frame, name: string|nil, layer: string, inherits: string|nil, subLayer: number|nil) : texture
---@field CreateFontString fun(self: frame, name: string|nil, layer: string, inherits: string|nil, subLayer: number|nil) : fontstring
---@field EnableMouse fun(self: frame, enable: boolean)

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
---@field RegisterForClicks fun(self: button, button1: string|nil, button2: string|nil)

---@class fontstring : UIObject
---@field SetDrawLayer fun(self: fontstring, layer: string, subLayer: number|nil)
---@field SetFont fun(self: fontstring, font: string, size: number, flags: string)
---@field SetText fun(self: fontstring, text: string)
---@field GetText fun(self: fontstring) : string
---@field GetFont fun(self: fontstring) : string, number, string
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
---@field SetWidth fun(self: fontstring, width: number)
---@field GetWidth fun(self: fontstring) : number
---@field SetHeight fun(self: fontstring, height: number)
---@field GetHeight fun(self: fontstring) : number
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

---@class texture : UIObject
---@field SetDrawLayer fun(self: texture, layer: string, subLayer: number|nil)
---@field SetTexture fun(self: texture, path: string)
---@field SetColorTexture fun(self: texture, r: red|number, g: green|number, b: blue|number, a: alpha|number)
---@field SetDesaturated fun(self: texture, desaturate: boolean)
---@field SetBlendMode fun(self: texture, mode: string)
---@field SetVertexColor fun(self: texture, r: red|number, g: green|number, b: blue|number, a: alpha|number)
---@field SetAlpha fun(self: texture, alpha: number)
---@field GetAlpha fun(self: texture) : number
---@field SetWidth fun(self: texture, width: number)
---@field SetHeight fun(self: texture, height: number)
---@field GetWidth fun(self: texture) : number
---@field GetHeight fun(self: texture) : number
---@field SetPoint fun(self: texture, point: string, relativeFrame: table, relativePoint: string, xOfs: number, yOfs: number)
---@field GetPoint fun(self: texture, index: number) : string, table, string, number, number
---@field SetShown fun(self: texture, state: boolean)
---@field IsShown fun(self: texture) : boolean
---@field SetParent fun(self: texture, parent: table)
---@field GetParent fun(self: texture) : table
---@field SetScale fun(self: texture, scale: number)
---@field GetScale fun(self: texture) : number
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
---@field _ActorTable table

---@class spelltable : table

---@class actor : table
---@field debuff_uptime_spells table
---@field buff_uptime_spells table
---@field spells table
---@field cooldowns_defensive_spells table
---@field nome string
---@field serial string
---@field grupo boolean
---@field fight_component boolean
---@field boss_fight_component boolean
---@field boss boolean
---@field last_event unixtime

---@class segmentid : number
---@class instanceid : number

---@class instance : table
---@field GetCombat fun(instance: instance, segmentId: segmentid) get the combat of the segment
---@field GetInstanceGroup fun() : table
---@field showing combat
---@field meu_id instanceid
---@field is_interacting boolean
---@field modo number








