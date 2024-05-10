import Scenes

class Background : Renderable {
    
    override func setup(canvasSize:Size, canvas:Canvas) {
        // Drawing the sky
        let skyRect = Rect(topLeft:Point(x:0, y:0), size:canvasSize)
        let skyFill = FillStyle(color:Color(red:135, green:206, blue:235)) // Sky blue color
        canvas.render(skyFill, skyRect)
        
        // Drawing the ground
        let groundRect = Rect(topLeft:Point(x:0, y:canvasSize.height * 0.6), size:Size(width:canvasSize.width, height:canvasSize.height * 0.4))
        let groundFill = FillStyle(color:Color(red:139, green:69, blue:19)) // Brown color
        canvas.render(groundFill, groundRect)
        
        // Drawing skyscrapers
        let building1 = Building(position:Point(x:canvasSize.width * 0.2, y:canvasSize.height * 0.4), width:80, height:300, color:Color(.red))
        let building2 = Building(position:Point(x:canvasSize.width * 0.5, y:canvasSize.height * 0.3), width:100, height:250, color:Color(.green))
        let building3 = Building(position:Point(x:canvasSize.width * 0.8, y:canvasSize.height * 0.5), width:120, height:350, color:Color(.blue))
        
        canvas.render(building1)
        canvas.render(building2)
        canvas.render(building3)
    }
}

class Building : Renderable {
    let position:Point
    let width:Double
    let height:Double
    let color:Color
    
    init(position:Point, width:Double, height:Double, color:Color) {
        self.position = position
        self.width = width
        self.height = height
        self.color = color
    }
    
    override func render(canvas:Canvas) {
        let buildingRect = Rect(topLeft:position, size:Size(width:width, height:height))
        let buildingFill = FillStyle(color:color)
        canvas.render(buildingFill, buildingRect)
    }
}
