/* ControlP5 Slider */
import controlP5.*;                // ajout de la librairie ControlP5

ControlP5 cp5;                     // création d'un objet ControlP5
int zoneColor = 255;                // couleur de fond sous le slider

void setup() {
    size(700,400);                 // définit les dimensions de l'affichage
    noStroke();              
    
    cp5 = new ControlP5(this);     // initialisation de l'objet cp5 créé.
 
    // chaque ligne suivante précise un paramètre de l'objet cp5   
    // référence : http://www.sojamo.de/libraries/controlP5/reference/index.html
    // notation des couleur : hexadécimal 0xaarrvvbb (a = alpha)
    cp5.addSlider("temperature")   // nature et nom de l'objet : slider
       .setPosition(20,10)         // position en pixle sur l'affichage (x,y)
       .setWidth(20)               // largeur en px du slider
       .setHeight(200)             // hauteur en px du slider
       .setRange(0,7)              // intervalle de valeurs (min, max)
       .setValue(0)                // valeur initiale
       .setDecimalPrecision(4)     // nombre de décimales
       .setNumberOfTickMarks(20)     // nombre de graduations
       .setColorTickMark(0xff00ff00) // couleur des graduations
       .setColorValue(0xffff0000)      // couleur au survol du slider
       .setColorBackground(0xffff6600) // couleur de fond du slider
       .setColorActive(0xffff0000)     // couleur 
       .setFont(createFont("Arial",20))    // choix de la typo
       .setCaptionLabel("augmentation t°C")  // légende du slider
       .setLabelVisible(true)                // légende visible : vrai ou faux
       .setSliderMode(Slider.FIX)      // nature de la limite .FIX ou .FLEXIBLE
       .setId(111)                  // identifiant arbitraire pour manipuler le slider)
       ;
}

void draw() {
    background(128);                // couleur de fond du display rvb = 128, 128, 128
}

// fonction de gestion de manipulation du slider
void controlEvent(ControlEvent theEvent) {
 
   if(theEvent.isController()) { 
   
       // affiche dans la console le nom du control utilisé
       print("control event from : "+theEvent.getController().getName()+"\n");
      
       if(theEvent.getController().getName()=="temperature") {
           println("valeur du slider = "+theEvent.getController().getValue()+"\n");
       }
   
    }
}

/*  ControlP5 Slider

controlP5.Controller : CColor getColor() 
controlP5.Controller : ControlBehavior getBehavior() 
controlP5.Controller : ControlWindow getControlWindow() 
controlP5.Controller : ControlWindow getWindow() 
controlP5.Controller : ControllerProperty getProperty(String) 
controlP5.Controller : ControllerProperty getProperty(String, String) 
controlP5.Controller : ControllerView getView() 
controlP5.Controller : Label getCaptionLabel() 
controlP5.Controller : Label getValueLabel() 
controlP5.Controller : List getControllerPlugList() 
controlP5.Controller : Pointer getPointer() 
controlP5.Controller : Slider addCallback(CallbackListener) 
controlP5.Controller : Slider addListener(ControlListener) 
controlP5.Controller : Slider addListenerFor(int, CallbackListener) 
controlP5.Controller : Slider align(int, int, int, int) 
controlP5.Controller : Slider bringToFront() 
controlP5.Controller : Slider bringToFront(ControllerInterface) 
controlP5.Controller : Slider hide() 
controlP5.Controller : Slider linebreak() 
controlP5.Controller : Slider listen(boolean) 
controlP5.Controller : Slider lock() 
controlP5.Controller : Slider onChange(CallbackListener) 
controlP5.Controller : Slider onClick(CallbackListener) 
controlP5.Controller : Slider onDoublePress(CallbackListener) 
controlP5.Controller : Slider onDrag(CallbackListener) 
controlP5.Controller : Slider onDraw(ControllerView) 
controlP5.Controller : Slider onEndDrag(CallbackListener) 
controlP5.Controller : Slider onEnter(CallbackListener) 
controlP5.Controller : Slider onLeave(CallbackListener) 
controlP5.Controller : Slider onMove(CallbackListener) 
controlP5.Controller : Slider onPress(CallbackListener) 
controlP5.Controller : Slider onRelease(CallbackListener) 
controlP5.Controller : Slider onReleaseOutside(CallbackListener) 
controlP5.Controller : Slider onStartDrag(CallbackListener) 
controlP5.Controller : Slider onWheel(CallbackListener) 
controlP5.Controller : Slider plugTo(Object) 
controlP5.Controller : Slider plugTo(Object, String) 
controlP5.Controller : Slider plugTo(Object[]) 
controlP5.Controller : Slider plugTo(Object[], String) 
controlP5.Controller : Slider registerProperty(String) 
controlP5.Controller : Slider registerProperty(String, String) 
controlP5.Controller : Slider registerTooltip(String) 
controlP5.Controller : Slider removeBehavior() 
controlP5.Controller : Slider removeCallback() 
controlP5.Controller : Slider removeCallback(CallbackListener) 
controlP5.Controller : Slider removeListener(ControlListener) 
controlP5.Controller : Slider removeListenerFor(int, CallbackListener) 
controlP5.Controller : Slider removeListenersFor(int) 
controlP5.Controller : Slider removeProperty(String) 
controlP5.Controller : Slider removeProperty(String, String) 
controlP5.Controller : Slider setArrayValue(float[]) 
controlP5.Controller : Slider setArrayValue(int, float) 
controlP5.Controller : Slider setBehavior(ControlBehavior) 
controlP5.Controller : Slider setBroadcast(boolean) 
controlP5.Controller : Slider setCaptionLabel(String) 
controlP5.Controller : Slider setColor(CColor) 
controlP5.Controller : Slider setColorActive(int) 
controlP5.Controller : Slider setColorBackground(int) 
controlP5.Controller : Slider setColorCaptionLabel(int) 
controlP5.Controller : Slider setColorForeground(int) 
controlP5.Controller : Slider setColorLabel(int) 
controlP5.Controller : Slider setColorValue(int) 
controlP5.Controller : Slider setColorValueLabel(int) 
controlP5.Controller : Slider setDecimalPrecision(int) 
controlP5.Controller : Slider setDefaultValue(float) 
controlP5.Controller : Slider setHeight(int) 
controlP5.Controller : Slider setId(int) 
controlP5.Controller : Slider setImage(PImage) 
controlP5.Controller : Slider setImage(PImage, int) 
controlP5.Controller : Slider setImages(PImage, PImage, PImage) 
controlP5.Controller : Slider setImages(PImage, PImage, PImage, PImage) 
controlP5.Controller : Slider setLabel(String) 
controlP5.Controller : Slider setLabelVisible(boolean) 
controlP5.Controller : Slider setLock(boolean) 
controlP5.Controller : Slider setMax(float) 
controlP5.Controller : Slider setMin(float) 
controlP5.Controller : Slider setMouseOver(boolean) 
controlP5.Controller : Slider setMoveable(boolean) 
controlP5.Controller : Slider setPosition(float, float) 
controlP5.Controller : Slider setPosition(float[]) 
controlP5.Controller : Slider setSize(PImage) 
controlP5.Controller : Slider setSize(int, int) 
controlP5.Controller : Slider setStringValue(String) 
controlP5.Controller : Slider setUpdate(boolean) 
controlP5.Controller : Slider setValue(float) 
controlP5.Controller : Slider setValueLabel(String) 
controlP5.Controller : Slider setValueSelf(float) 
controlP5.Controller : Slider setView(ControllerView) 
controlP5.Controller : Slider setVisible(boolean) 
controlP5.Controller : Slider setWidth(int) 
controlP5.Controller : Slider show() 
controlP5.Controller : Slider unlock() 
controlP5.Controller : Slider unplugFrom(Object) 
controlP5.Controller : Slider unplugFrom(Object[]) 
controlP5.Controller : Slider unregisterTooltip() 
controlP5.Controller : Slider update() 
controlP5.Controller : Slider updateSize() 
controlP5.Controller : String getAddress() 
controlP5.Controller : String getInfo() 
controlP5.Controller : String getName() 
controlP5.Controller : String getStringValue() 
controlP5.Controller : String toString() 
controlP5.Controller : Tab getTab() 
controlP5.Controller : boolean isActive() 
controlP5.Controller : boolean isBroadcast() 
controlP5.Controller : boolean isInside() 
controlP5.Controller : boolean isLabelVisible() 
controlP5.Controller : boolean isListening() 
controlP5.Controller : boolean isLock() 
controlP5.Controller : boolean isMouseOver() 
controlP5.Controller : boolean isMousePressed() 
controlP5.Controller : boolean isMoveable() 
controlP5.Controller : boolean isUpdate() 
controlP5.Controller : boolean isVisible() 
controlP5.Controller : float getArrayValue(int) 
controlP5.Controller : float getDefaultValue() 
controlP5.Controller : float getMax() 
controlP5.Controller : float getMin() 
controlP5.Controller : float getValue() 
controlP5.Controller : float[] getAbsolutePosition() 
controlP5.Controller : float[] getArrayValue() 
controlP5.Controller : float[] getPosition() 
controlP5.Controller : int getDecimalPrecision() 
controlP5.Controller : int getHeight() 
controlP5.Controller : int getId() 
controlP5.Controller : int getWidth() 
controlP5.Controller : int listenerSize() 
controlP5.Controller : void remove() 
controlP5.Controller : void setView(ControllerView, int) 
controlP5.Slider : ArrayList getTickMarks() 
controlP5.Slider : Slider setColorTickMark(int) 
controlP5.Slider : Slider setHandleSize(int) 
controlP5.Slider : Slider setHeight(int) 
controlP5.Slider : Slider setMax(float) 
controlP5.Slider : Slider setMin(float) 
controlP5.Slider : Slider setNumberOfTickMarks(int) 
controlP5.Slider : Slider setRange(float, float) 
controlP5.Slider : Slider setScrollSensitivity(float) 
controlP5.Slider : Slider setSize(int, int) 
controlP5.Slider : Slider setSliderMode(int) 
controlP5.Slider : Slider setTriggerEvent(int) 
controlP5.Slider : Slider setValue(float) 
controlP5.Slider : Slider setWidth(int) 
controlP5.Slider : Slider showTickMarks(boolean) 
controlP5.Slider : Slider shuffle() 
controlP5.Slider : Slider snapToTickMarks(boolean) 
controlP5.Slider : Slider update() 
controlP5.Slider : TickMark getTickMark(int) 
controlP5.Slider : float getMax() 
controlP5.Slider : float getMin() 
controlP5.Slider : float getValue() 
controlP5.Slider : float getValuePosition() 
controlP5.Slider : int getDirection() 
controlP5.Slider : int getHandleSize() 
controlP5.Slider : int getNumberOfTickMarks() 
controlP5.Slider : int getSliderMode() 
controlP5.Slider : int getTriggerEvent() 
java.lang.Object : String toString() 
java.lang.Object : boolean equals(Object) 

*/
