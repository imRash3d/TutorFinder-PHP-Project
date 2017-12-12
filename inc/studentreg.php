<?php


include("constant.php");



$name=$_POST['name'];
$username=$_POST['username'];
$number=$_POST['mobile'];
$class=$_POST['student_class'];
$password=$_POST['password'];
$college_name= $_POST['college_name'];


$user_type="student";

if(($name!=null) && ($username!=null) && ($number!=null) &&($class!=null) &&($password!=null)) { 
$sql = "INSERT INTO student (password,username,name,mobile,institute_name,class)
VALUES ('$password','$username','$name','$number','$college_name','$class')";

$query1="INSERT INTO user (email,password,usertype)
VALUES ('$username','$password','$user_type')";

if ($conn->query($sql) === TRUE && $conn->query($query1)) {
    echo "Student Register  successfully";
} else {

    echo "Error: " . $sql . "<br>" . $conn->error;
}


$conn->close();
}

else {

echo "You Have Missed Something";
}
?>








