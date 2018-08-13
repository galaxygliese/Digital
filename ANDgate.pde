class AND{
   float inX1, inY1;
   float inX2, inY2;
   float inX3, inY3;
   float inX4, inY4;
   
   float bodyX1, bodyY1;
   float bodyX2, bodyY2;
   float bodyX3, bodyY3;
   float bodyX4, bodyY4;
   
   float outX1, outY1;
   float outX2, outY2;
   
   float len;
   float cx, cy;
   
   boolean activate = true;
   
   AND(float centerx, float centery, float L ){
       len = L;
       cx = centerx;
       cy = centery;
   }
   void points(){
        bodyX3 = cx;
        bodyY3 = cy - len;
        
        bodyX4 = cx;
        bodyY4 = cy + len;
        
        bodyX1 = cx - len;
        bodyY1 = cy - len;
        bodyX2 = cx - len;
        bodyY2 = cy + len;
        
        outX1 = cx + len;
        outY1 = cy;
        outX2 = cx + 2*len;
        outY2 = cy;        
        
        inX2 = cx - len;
        inY2 = cy - len/2;
        inX1 = cx - 2*len;
        inY1 = cy - len/2;
        
        inX4 = cx - len;
        inY4 = cy + len/2;
        inX3 = cx - 2*len;
        inY3 = cy + len/2;
   }
 
   void update(float centerX, float centerY){
        cx = centerX;
        cy = centerY;
        points();
   }
   void active(int press){
        if (press==0){
            activate = false;
        }else{
            activate = true;
        } 
   }
   
   void display(){
        if (activate == true){
           line(inX1, inY1, inX2, inY2);
           line(inX3, inY3, inX4, inY3);
        
           line(bodyX1, bodyY1, bodyX2, bodyY2);
           line(bodyX1, bodyY1, bodyX3, bodyY3);
           line(bodyX2, bodyY2, bodyX4, bodyY4);
        
           arc(cx, cy, 2*len, 2*len, -HALF_PI, HALF_PI );
           line(outX1, outY1, outX2, outY2);
      }
   }
}
