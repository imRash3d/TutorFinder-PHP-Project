
<?php include("header.php"); ?>
<?php
if(!isset($_SESSION)) 
    {     //SESSION START 
        session_start(); 
		
  
  }
  if((!$_SESSION['email']) && (!$_SESSION['password']) ){
   header("Location: http://localhost/bdtutor/");
  }
  
 					
	include("inc/constant.php");
	$email=$_SESSION['email'];
	$sql = "SELECT *  FROM guardian WHERE email='$email'";
	$result = $conn->query($sql);
	
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
	$name=$row["name"];
	$email=$row["email"];
	$number=$row["number"];
	$area=$row["area"];
	}
}

else {

echo "fff";}	
	
 ?>

<section id="contact-page">
    <div class="container">
       <div class="center">
        <h2>Guardian  Panel</h2>
        </div>
      <div class="center"> <a class="btn btn-danger"href="inc/logout.php">logout</a>
        </div>
   
   
   <div class="row"> 
   
				<div class="col-md-6"> 
		<h3> Request Tutor </h3>
          
          
          <div class="contactForm">
		
		
           
              <input type="hidden" name="name" class="form-control" id="name" value="<?php echo $name ?>"  />
              
        
           
              <input type="hidden" class="form-control" name="mobile" id="number" value="<?php echo $number ?>" />
              <input type="hidden" class="form-control" name="email" id="email" value="<?php echo $email ?>" />
             
       
        
			 
			  <input type="hidden" class="form-control" name="area" id="area" value="<?php echo $area ?>" />
             
           
         
			  <div class="form-group">
						<label for="">Subject</label>
						<select class="form-control" name="subject" id="subject">
						  <option>Requested Subject</option>
						  
						  <option value="Bangla">Bangla</option>
						  <option value="English">English</option>
						  <option value="Math">Math</option>
						  <option value="ICT">ICT</option>
						  <option value="Physic">Physic</option>
						  <option value="Chemistry">Chemistry</option>
						  <option value="Bio-logy">Bio-logy</option>
						  <option value="HigherMath">HigherMath</option>
						  <option value="Accounting">Accounting</option>
						  <option value="Finance">Finance</option>
						  <option value="Marketing">Marketing</option>
						  
						 
						  
						  
						  
						</select>
			</div>
			
			   <div class="form-group">
						<label for="">Qualification</label>
						<select class="form-control" name="qualification" id="qualification">
						  <option>Required Teacher Qualification</option>
						  
						  <option value="BSc">BSc</option>
						  <option value="BA">BA</option>
						  <option value="BSS">BSS</option>
						  <option value="BBS">BBS</option>
						  <option value="BBA">BBA</option>
						  <option value="MSc">MSc</option>
						  <option value="MA">MA</option>
						  <option value="MSS">MSS</option>
						  <option value="MBS">MBS</option>
						  <option value="MBA">MBA</option>
						  
						</select>
			</div>
			      <div class="form-group">
						
						<select class="form-control" name="class_student" id="class_student">
							<option value="N/A">Select class</option>
						  <option value="Class 6">Class 6</option>
						  <option value="Class 7">Class 7</option>
						  <option value="Class 8">Class 8</option>
						  <option value="Class 9">Class 9</option>
						  <option value="Class 10">Class 10</option>
						  <option value="Class 11">Class 11</option>
						  <option value="Class 12">Class 12</option>
						  <option value="Honors">Honors</option>
						  
						  
						</select>
						 <span class="error_message" id="class_error"></span>
			</div>
			
			    <div class="form-group">
						<label for="">Honorary</label>
						<select class="form-control" name="honorary" id="honorary">
						  <option>Honorary</option>
						  
						  <option value="Bellow 3000 Tk">Bellow 3000 Tk</option>
						  <option value="3000 Tk - 5000Tk">3000 Tk - 5000Tk</option>
						  <option value="5000tk -8000 tk">5000tk -8000 tk</option>
						  <option value="Negotiable">Negotiable </option>
						  
						  
						 
						  
						  
						  
						</select>
			</div>
			
			
            <div class="text-center"><button type="submit" name="submit" id="submit" class="btn btn-primary btn-lg" >Submit </button></div>
          </div>
		  <div id="result"></div>
			</div>
	
	<div class="col-md-1"></div>
				
				<div class="col-md-5 teacherinfo"> 
					<h3>Account Details </h3>
					
					
					

	
	
		

	<div class="single-tutor">
		<div class="tutor-are">
				<div class=""><h3><?php echo $name ?></h3></div>
				
		
		</div>
			
			<p><span>Area:</span> <?php echo $area ?></p>
			<p><span>Email:</span> <?php echo $email ?></p>
			<p><span>Number:</span> <?php echo $number ?></p>
			
		</div>
	

				
				</div>
   
   
   </div>
      </div>
      <!--/.row-->
    </div>
    <!--/.container-->
  </section>
 
<script src="js/jquery-2.js"></script>
<script type="text/javascript"> 
	
		$(document).ready(function(){
		
		$("#submit").click(function(){
		
		var name=$("#name").val();
		var mob=$("#number").val();
		var email=$("#email").val();
		var area=$("#area").val();
		var sub=$("#subject").val();
		var student_class=$("#class_student").val();
		var degree=$("#qualification").val();
		var honory=$("#honorary").val();
		

	
		
					$.ajax({
				
				
				url:'inc/tutor_req.php',
				data:{student_class:student_class, name:name,subject:sub,email:email,area:area,mobile:mob,honorary:honory,qualification:degree},
				type:'POST',
				success:function(data){
					$("#result").html(data);
					
					
				}
				
				
				
			});
			
	
			
		
		
		
	
		});
		

		});
	
	
	
	
	
	
	
	</script> 



<?php include("footer.php"); ?>