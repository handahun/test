<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>勲テストページ</title>
</head>
<body>
<h1>ナレッジ公開テストページ</h1>
<script src="https://cunning-fox-komlbd-dev-ed.my.salesforce.com/lightning/lightning.out.js"></script>
<div id="LcDisplayId"></div>

 <script>
      // Here 'VfApp' Is Lightning Application Name
    $Lightning.use("c:VfApp", function() {
      /* 'LcForVf' is Lightning Component Name which we are Displaying In Vf Page
       * syntax for create lightning component dynamically :
       * $Lightning.createComponent(String type, Object attributes, String locator, function callback) */
    $Lightning.createComponent("c:LcForVf",
    {
      // Set Lightning Component Attributes Property before creating Lightning Component In Visualforce page
        textColor : "Red",
        currentUserName : '{!$User.FirstName} {!$User.LastName}'
 	},
   "LcDisplayId",
    function(component) {
        // create component Callback, Lightning Component has been Created,
        // Now you can set more lightning Component attributes here,
        // and do more cool stuff here
        component.set("v.accId" , '{!$CurrentPage.parameters.recId}');
    });
 });
 </script>
</body>
</html>