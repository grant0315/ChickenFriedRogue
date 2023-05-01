import nico

const orgName = "GrantHopkins"
const appName = "ChickenFriedRogue"

var buttonDown = false

proc gameInit() =
  loadFont(0, "font.png")

proc gameUpdate(dt: float32) =
  buttonDown = btn(pcA)

proc gameDraw() =
  cls()
  setColor(if buttonDown: 7 else: 3)
  printc("welcome to " & appName, screenWidth div 2, screenHeight div 2)

# Initialization 
fixedSize(true) # fixed sized screen with perfect square pixels
integerScale(true)
nico.init(orgName, appName)
nico.createWindow(appName, 128, 128, 4, false) # Create the window
nico.run(gameInit, gameUpdate, gameDraw)
