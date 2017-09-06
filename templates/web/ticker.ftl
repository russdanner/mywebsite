<#import "/templates/system/common/cstudio-support.ftl" as studio />

<div <@studio.componentAttr path=contentModel.storeUrl ice=true /> >
    <canvas id="c" width="500" height="375"></canvas>



  <script>
    var priceData = [];
    
    <#list dataPoints as point>
        priceData[priceData.length] = ({date: "${point.date}", price:${ point.value?string.computer} });
    </#list>
    
    if (document.getElementById('c')) {
    
      // context
      var c_canvas = document.getElementById("c");
      var context = c_canvas.getContext("2d");
    
      // grid
      for (var x = 0.5; x < 500; x += 10) {
        context.moveTo(x, 0);
        context.lineTo(x, 375);
      }
    
      for (var y = 0.5; y < 375; y += 10) {
        context.moveTo(0, y);
        context.lineTo(500, y);
      }
    
      context.strokeStyle = "#eee";
      context.stroke();
    
      // axis
      context.beginPath();
      context.moveTo(0, 375 / 2);
      context.lineTo(500, 375 / 2);
    
      context.moveTo(60, 0);
      context.lineTo(60, 27);
      context.moveTo(60, 47);
      context.lineTo(60, 375);
    
      context.strokeStyle = "#000";
      context.stroke();
    
      var lineGraph = function(o) {
        context.beginPath();
        
          context.font = "bold 12px sans-serif";
  		  context.fillText("Day", 248, 42);
         context.fillText("Price", 28, 42);
  
        context.moveTo(60, 375 / 2);
        

		var xContext = o.data[0].price;
        
        for(var i = 0; i < o.data.length; i++) {
          var yVal = 100+(i*10);
          var xVal = (o.data[i].price - xContext)/10;
          
          context.lineTo(yVal, xVal);
        }
        
        context.strokeStyle = o.color;
        context.stroke();
      };
    
      lineGraph({
        'data': priceData,
        'color': '#e00'
      });
    }
  </script>

</div>
