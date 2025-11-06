<?php
// Include database connection
include('db_config.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // Collect form data
    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];

    // Validate phone number: reject if starts with 123456
    if (strpos($phone, '123456') === 0) {
        echo "<!DOCTYPE html><html><head><title>Registration Error</title></head>
        <body style='font-family: Arial; padding: 20px;'>";
        echo "<h1>Registration Failed ❌</h1>";
        echo "<p>Invalid phone number: cannot start with 123456.</p>";
        echo "<br><a href='index.html' style='color: blue; text-decoration: none;'>← Back to Form</a>";
        echo "</body></html>";
        exit;
    }

    // Prepend +91 if not already present
    if (!preg_match('/^\+91/', $phone)) {
        $phone = '+91' . $phone;
    }

    $address = $_POST['address'];
    $fatherName = $_POST['fatherName'];
    $motherName = $_POST['motherName'];
    $dob = $_POST['dob'];
    $gender = $_POST['gender'];
    $nationality = $_POST['nationality'];
    $state = $_POST['state'];
    $universityName = $_POST['universityName'];
    $collegeName = $_POST['collegeName'];
    $technicalSkills = $_POST['technicalSkills'];
    $eventType = $_POST['eventType'];
    $eventDate = $_POST['eventDate'];
    $eventTime = $_POST['eventTime'];
    $venue = $_POST['venue'];
    $participationType = $_POST['participationType'];
    $groupName = $_POST['groupName'];
    $numberOfMembers = $_POST['numberOfMembers'];

    // Insert data into database
    $sql = "INSERT INTO registrations (
                name, email, phone, address, fatherName, motherName, dob, gender, nationality, state,
                universityName, collegeName, technicalSkills, eventType, eventDate, eventTime, venue,
                participationType, groupName, numberOfMembers
            ) VALUES (
                '$name', '$email', '$phone', '$address', '$fatherName', '$motherName', '$dob', '$gender',
                '$nationality', '$state', '$universityName', '$collegeName', '$technicalSkills', '$eventType',
                '$eventDate', '$eventTime', '$venue', '$participationType', '$groupName', '$numberOfMembers'
            )";

    if ($conn->query($sql) === TRUE) {
        echo "<!DOCTYPE html><html><head><title>Registration Success</title></head>
        <body style='font-family: Arial; padding: 20px;'>";
        echo "<h1>Registration Successful ✅</h1>";
        echo "<p>Your registration details have been saved in the database.</p>";
        echo "<h2>Registration Summary:</h2>";
        echo "<p><strong>Name:</strong> " . htmlspecialchars($name) . "</p>";
        echo "<p><strong>Email:</strong> " . htmlspecialchars($email) . "</p>";
        echo "<p><strong>Event:</strong> " . htmlspecialchars($eventType) . "</p>";
        echo "<p><strong>Date:</strong> " . htmlspecialchars($eventDate) . "</p>";
        echo "<br><a href='index.html' style='color: blue; text-decoration: none;'>← Back to Form</a>";
        echo "</body></html>";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();

} else {
    echo "<p>No data submitted.</p>";
}
?>
