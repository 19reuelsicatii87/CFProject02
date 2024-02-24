<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Custom Tag</title>
      <!-- Bootstrap CSS -->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
         integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
   </head>
   <body>
      <div class="container mt-5">
         <div class="row my-3">
            <h3>
               CUSTOM TAG -- Variable
            </h3>
            CUSTOM TAG -- Variable (without Content)
            <cf_customVariable />

            CUSTOM TAG -- Variable (with Content)
            <cf_customVariable sampleVar="Override the default value"> 
               <p>Sample Tag Content</p>
            </cf_customVariable>
         </div>
         <div class="row my-3">
            <h3>
               CUSTOM TAG -- Without Attribute + Without Closing
            </h3>
            <p>
               Today's Date is 
               <b>
                  <cf_customToday>
               </b>
               <cfoutput>#now()#</cfoutput>
            </p>
         </div>
         <div class="row my-3">
            <h3>
               CUSTOM TAG -- With Attribute(Var) + Without Closing
            </h3>
            <p>
               Today's Date minus "2024-01-01" in days is 
               <b>
                  <cf_customDateRange duration="d" date1="2024-01-01" date2=#now()#>
               </b>
            </p>
            <p>
               Today's Date minus "2024-01-01" in hours is 
               <b>
                  <cf_customDateRange duration="h" date1="2024-01-01" date2=#now()#>
               </b>
            </p>
         </div>
         <div class="row my-3">
            <h3>
               CUSTOM TAG -- With Attribute(Var) + With Closing as Try-Catch-Finally Block
            </h3>
            <cf_customTryCatch opening="OPENING" closing="CLOSING"/>
         </div>

         <div class="row my-3">
            <h3>
               CUSTOM TAG -- With Attribute(Struct) + Without Closing
            </h3>

            <cfset stCard={imageURL="https://voge.s3.ap-southeast-1.amazonaws.com/images/models/VOGE+500DSX+CROP/VOGE_500DSX_silver_with_Box_5.png", 
            title="500 DSX", description="Thanks in part to its torquey and smooth twin-cylinder engine, the 500DSX offers both confidence and performance 
            to the adventurer in us. This touring motorbike also boasts excellent comfort and premium components, essential features for mile-eaters.
             This motorbike combines versatility with reliability and riding pleasure. And with the handsome spoke rims (19-inch at the front 
             and 17-inch at the rear) and Metzeler Tourance tyres, the 500DSX adds a touch of adventure."}>

             <cf_customBootstrapCard card=#stCard#>
         </div>

         <div class="row my-5">
            <h3>
               CUSTOM TAG -- With Attribute(Array) + Without Closing
            </h3>

            <cfset stButton=["primary","secondary","success","danger","warning","info","light","dark"]>

             <cf_customBootstrapButton button=#stButton#>
         </div>


         <div class="row my-5">
            <h3>
               CUSTOM TAG -- HTML + JavaScript
            </h3>
             <cf_customHTMLJavaScript>
         </div>


      </div>


      <!-- Option 1: Bootstrap Bundle with Popper -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
         integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
         crossorigin="anonymous"></script>
   </body>
</html>