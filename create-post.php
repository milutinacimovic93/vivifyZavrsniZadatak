<?php
    
    
ini_set('display_errors', 'On');
error_reporting(E_ALL);

include('db.php');

function insertIntoDB($connection, $sql) {
    $statement = $connection->prepare($sql);
    $statement->execute();
    return;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

$title = $_POST['title'];
$body = $_POST['body'];
$author = $_POST['author'];
$created_at_raw = htmlentities($_POST['created_at']);
$created_at = date('Y-m-d', (strtotime($created_at_raw)));
$sql = "INSERT INTO posts (title, body, author, created_at) VALUES ('$title', '$body', '$author', '$created_at')";
    insertIntoDB($connection, $sql);
    header('location:posts.php');
}


?> 

<?php include('header.php');?>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
    integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
<link href="styles/blog.css" rel="stylesheet">
<link href="styles/styles.css" rel="stylesheet">

<main role="main" class="container">
    <div class="row">
        <div class="col-sm-8 blog-main">
                <form action="create-post.php" method="POST" >
                    <h1>Create post</h1>
                    <p>
                        <label>Title</label>
                        <br/>
                        <input name="title"/>
                        <br/>
                        <label>Content</label>
                        <br/>
                        <input name="body"></input>
                        <br/>
                        <label>Author</label>
                        <br/>
                        <input name="author"/>
                        <br/>
                        <button type="submit">Create post</button>
                        <br/>
                        <input type="date" name="created_at">
                        <br/>
                    </p>
                </form>
        </div>

<?php
include('sidebar.php');
include('footer.php');
?>