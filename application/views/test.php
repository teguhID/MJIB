<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <!-- CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
    <!-- JavaScript -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="<?php echo base_url('assets/user/')?>js/jquery.simplePagination.js"></script>
</head>

<style>
body {
	font-family: 'Roboto', sans-serif;
	font-size: 14px;
	line-height: 18px;
	background: #f4f4f4;
}

.list-wrapper {
	padding: 15px;
	overflow: hidden;
}

.list-item {
	border: 1px solid #EEE;
	background: #FFF;
	margin-bottom: 10px;
	padding: 10px;
	box-shadow: 0px 0px 10px 0px #EEE;
}

.list-item h4 {
	color: #23c272;
	font-size: 18px;
	margin: 0 0 5px;	
}

.list-item p {
	margin: 0;
}

.simple-pagination ul {
	margin: 0 0 20px;
	padding: 0;
	list-style: none;
	text-align: center;
}

.simple-pagination li {
	display: inline-block;
	margin-right: 5px;
}

.simple-pagination li a,
.simple-pagination li span {
	padding: 5px 10px;
    text-decoration: none;
    border-radius: 25px;
    color: #2c3e50;
    border-color: #bdc3c7;
	background-color: #FFF;
}

.simple-pagination .current {
    border-radius: 25px;
    color: #FFF;
    border-color: #23c272;
	background-color: #23c272;
}

.simple-pagination .prev.current,
.simple-pagination .next.current {
	border-radius: 25px;
    color: #FFF;
    border-color: #23c272;
	background-color: #23c272;
}
</style>

<body>
<div class="list-wrapper">
	<div class="list-item">
		<h4>Iron Man</h4>
		<p>Iron Man is a 2008 American superhero film based on the Marvel Comics character of the same name, produced by Marvel Studios and distributed by Paramount Pictures. It is the first film in the Marvel Cinematic Universe (MCU). The film was directed by Jon Favreau, with a screenplay by the writing teams of Mark Fergus ...</p>
	</div>
	<div class="list-item">
		<h4>The Incredible Hulk</h4>
		<p>The Incredible Hulk is a 2008 American superhero film based on the Marvel Comics character the Hulk, produced by Marvel Studios and distributed by Universal Pictures. It is the second film in the Marvel Cinematic Universe (MCU). The film was directed by Louis Leterrier, with a screenplay by Zak Penn. It stars Edward ...</p>
	</div>
	<div class="list-item">
		<h4>Iron Man 2</h4>
		<p>Iron Man 2 is a 2010 American superhero film based on the Marvel Comics character Iron Man, produced by Marvel Studios and distributed by Paramount Pictures. It is the sequel to 2008's Iron Man, and is the third film in the Marvel Cinematic Universe (MCU). Directed by Jon Favreau and written by Justin Theroux, the film ...</p>
	</div>
    <div class="list-item">
		<h4>Iron Man</h4>
		<p>Iron Man is a 2008 American superhero film based on the Marvel Comics character of the same name, produced by Marvel Studios and distributed by Paramount Pictures. It is the first film in the Marvel Cinematic Universe (MCU). The film was directed by Jon Favreau, with a screenplay by the writing teams of Mark Fergus ...</p>
	</div>
	<div class="list-item">
		<h4>The Incredible Hulk</h4>
		<p>The Incredible Hulk is a 2008 American superhero film based on the Marvel Comics character the Hulk, produced by Marvel Studios and distributed by Universal Pictures. It is the second film in the Marvel Cinematic Universe (MCU). The film was directed by Louis Leterrier, with a screenplay by Zak Penn. It stars Edward ...</p>
	</div>
	<div class="list-item">
		<h4>Iron Man 2</h4>
		<p>Iron Man 2 is a 2010 American superhero film based on the Marvel Comics character Iron Man, produced by Marvel Studios and distributed by Paramount Pictures. It is the sequel to 2008's Iron Man, and is the third film in the Marvel Cinematic Universe (MCU). Directed by Jon Favreau and written by Justin Theroux, the film ...</p>
	</div>
    <div class="list-item">
		<h4>Iron Man</h4>
		<p>Iron Man is a 2008 American superhero film based on the Marvel Comics character of the same name, produced by Marvel Studios and distributed by Paramount Pictures. It is the first film in the Marvel Cinematic Universe (MCU). The film was directed by Jon Favreau, with a screenplay by the writing teams of Mark Fergus ...</p>
	</div>
	<div class="list-item">
		<h4>The Incredible Hulk</h4>
		<p>The Incredible Hulk is a 2008 American superhero film based on the Marvel Comics character the Hulk, produced by Marvel Studios and distributed by Universal Pictures. It is the second film in the Marvel Cinematic Universe (MCU). The film was directed by Louis Leterrier, with a screenplay by Zak Penn. It stars Edward ...</p>
	</div>
	<div class="list-item">
		<h4>Iron Man 2</h4>
		<p>Iron Man 2 is a 2010 American superhero film based on the Marvel Comics character Iron Man, produced by Marvel Studios and distributed by Paramount Pictures. It is the sequel to 2008's Iron Man, and is the third film in the Marvel Cinematic Universe (MCU). Directed by Jon Favreau and written by Justin Theroux, the film ...</p>
	</div>
    <div class="list-item">
		<h4>Iron Man</h4>
		<p>Iron Man is a 2008 American superhero film based on the Marvel Comics character of the same name, produced by Marvel Studios and distributed by Paramount Pictures. It is the first film in the Marvel Cinematic Universe (MCU). The film was directed by Jon Favreau, with a screenplay by the writing teams of Mark Fergus ...</p>
	</div>
	<div class="list-item">
		<h4>The Incredible Hulk</h4>
		<p>The Incredible Hulk is a 2008 American superhero film based on the Marvel Comics character the Hulk, produced by Marvel Studios and distributed by Universal Pictures. It is the second film in the Marvel Cinematic Universe (MCU). The film was directed by Louis Leterrier, with a screenplay by Zak Penn. It stars Edward ...</p>
	</div>
	<div class="list-item">
		<h4>Iron Man 2</h4>
		<p>Iron Man 2 is a 2010 American superhero film based on the Marvel Comics character Iron Man, produced by Marvel Studios and distributed by Paramount Pictures. It is the sequel to 2008's Iron Man, and is the third film in the Marvel Cinematic Universe (MCU). Directed by Jon Favreau and written by Justin Theroux, the film ...</p>
	</div>
    <div class="list-item">
		<h4>Iron Man</h4>
		<p>Iron Man is a 2008 American superhero film based on the Marvel Comics character of the same name, produced by Marvel Studios and distributed by Paramount Pictures. It is the first film in the Marvel Cinematic Universe (MCU). The film was directed by Jon Favreau, with a screenplay by the writing teams of Mark Fergus ...</p>
	</div>
	<div class="list-item">
		<h4>The Incredible Hulk</h4>
		<p>The Incredible Hulk is a 2008 American superhero film based on the Marvel Comics character the Hulk, produced by Marvel Studios and distributed by Universal Pictures. It is the second film in the Marvel Cinematic Universe (MCU). The film was directed by Louis Leterrier, with a screenplay by Zak Penn. It stars Edward ...</p>
	</div>
	<div class="list-item">
		<h4>Iron Man 2</h4>
		<p>Iron Man 2 is a 2010 American superhero film based on the Marvel Comics character Iron Man, produced by Marvel Studios and distributed by Paramount Pictures. It is the sequel to 2008's Iron Man, and is the third film in the Marvel Cinematic Universe (MCU). Directed by Jon Favreau and written by Justin Theroux, the film ...</p>
	</div>
    <div class="list-item">
		<h4>Iron Man</h4>
		<p>Iron Man is a 2008 American superhero film based on the Marvel Comics character of the same name, produced by Marvel Studios and distributed by Paramount Pictures. It is the first film in the Marvel Cinematic Universe (MCU). The film was directed by Jon Favreau, with a screenplay by the writing teams of Mark Fergus ...</p>
	</div>
	<div class="list-item">
		<h4>The Incredible Hulk</h4>
		<p>The Incredible Hulk is a 2008 American superhero film based on the Marvel Comics character the Hulk, produced by Marvel Studios and distributed by Universal Pictures. It is the second film in the Marvel Cinematic Universe (MCU). The film was directed by Louis Leterrier, with a screenplay by Zak Penn. It stars Edward ...</p>
	</div>
	<div class="list-item">
		<h4>Iron Man 2</h4>
		<p>Iron Man 2 is a 2010 American superhero film based on the Marvel Comics character Iron Man, produced by Marvel Studios and distributed by Paramount Pictures. It is the sequel to 2008's Iron Man, and is the third film in the Marvel Cinematic Universe (MCU). Directed by Jon Favreau and written by Justin Theroux, the film ...</p>
	</div>
    <div class="list-item">
		<h4>Iron Man</h4>
		<p>Iron Man is a 2008 American superhero film based on the Marvel Comics character of the same name, produced by Marvel Studios and distributed by Paramount Pictures. It is the first film in the Marvel Cinematic Universe (MCU). The film was directed by Jon Favreau, with a screenplay by the writing teams of Mark Fergus ...</p>
	</div>
	<div class="list-item">
		<h4>The Incredible Hulk</h4>
		<p>The Incredible Hulk is a 2008 American superhero film based on the Marvel Comics character the Hulk, produced by Marvel Studios and distributed by Universal Pictures. It is the second film in the Marvel Cinematic Universe (MCU). The film was directed by Louis Leterrier, with a screenplay by Zak Penn. It stars Edward ...</p>
	</div>
	<div class="list-item">
		<h4>Iron Man 2</h4>
		<p>Iron Man 2 is a 2010 American superhero film based on the Marvel Comics character Iron Man, produced by Marvel Studios and distributed by Paramount Pictures. It is the sequel to 2008's Iron Man, and is the third film in the Marvel Cinematic Universe (MCU). Directed by Jon Favreau and written by Justin Theroux, the film ...</p>
	</div>
    <div class="list-item">
		<h4>Iron Man</h4>
		<p>Iron Man is a 2008 American superhero film based on the Marvel Comics character of the same name, produced by Marvel Studios and distributed by Paramount Pictures. It is the first film in the Marvel Cinematic Universe (MCU). The film was directed by Jon Favreau, with a screenplay by the writing teams of Mark Fergus ...</p>
	</div>
	<div class="list-item">
		<h4>The Incredible Hulk</h4>
		<p>The Incredible Hulk is a 2008 American superhero film based on the Marvel Comics character the Hulk, produced by Marvel Studios and distributed by Universal Pictures. It is the second film in the Marvel Cinematic Universe (MCU). The film was directed by Louis Leterrier, with a screenplay by Zak Penn. It stars Edward ...</p>
	</div>
	<div class="list-item">
		<h4>Iron Man 2</h4>
		<p>Iron Man 2 is a 2010 American superhero film based on the Marvel Comics character Iron Man, produced by Marvel Studios and distributed by Paramount Pictures. It is the sequel to 2008's Iron Man, and is the third film in the Marvel Cinematic Universe (MCU). Directed by Jon Favreau and written by Justin Theroux, the film ...</p>
	</div>
    <div class="list-item">
		<h4>Iron Man</h4>
		<p>Iron Man is a 2008 American superhero film based on the Marvel Comics character of the same name, produced by Marvel Studios and distributed by Paramount Pictures. It is the first film in the Marvel Cinematic Universe (MCU). The film was directed by Jon Favreau, with a screenplay by the writing teams of Mark Fergus ...</p>
	</div>
	<div class="list-item">
		<h4>The Incredible Hulk</h4>
		<p>The Incredible Hulk is a 2008 American superhero film based on the Marvel Comics character the Hulk, produced by Marvel Studios and distributed by Universal Pictures. It is the second film in the Marvel Cinematic Universe (MCU). The film was directed by Louis Leterrier, with a screenplay by Zak Penn. It stars Edward ...</p>
	</div>
	<div class="list-item">
		<h4>Iron Man 2</h4>
		<p>Iron Man 2 is a 2010 American superhero film based on the Marvel Comics character Iron Man, produced by Marvel Studios and distributed by Paramount Pictures. It is the sequel to 2008's Iron Man, and is the third film in the Marvel Cinematic Universe (MCU). Directed by Jon Favreau and written by Justin Theroux, the film ...</p>
	</div>
    <div class="list-item">
		<h4>Iron Man</h4>
		<p>Iron Man is a 2008 American superhero film based on the Marvel Comics character of the same name, produced by Marvel Studios and distributed by Paramount Pictures. It is the first film in the Marvel Cinematic Universe (MCU). The film was directed by Jon Favreau, with a screenplay by the writing teams of Mark Fergus ...</p>
	</div>
	<div class="list-item">
		<h4>The Incredible Hulk</h4>
		<p>The Incredible Hulk is a 2008 American superhero film based on the Marvel Comics character the Hulk, produced by Marvel Studios and distributed by Universal Pictures. It is the second film in the Marvel Cinematic Universe (MCU). The film was directed by Louis Leterrier, with a screenplay by Zak Penn. It stars Edward ...</p>
	</div>
	<div class="list-item">
		<h4>Iron Man 2</h4>
		<p>Iron Man 2 is a 2010 American superhero film based on the Marvel Comics character Iron Man, produced by Marvel Studios and distributed by Paramount Pictures. It is the sequel to 2008's Iron Man, and is the third film in the Marvel Cinematic Universe (MCU). Directed by Jon Favreau and written by Justin Theroux, the film ...</p>
	</div>
    <div class="list-item">
		<h4>Iron Man</h4>
		<p>Iron Man is a 2008 American superhero film based on the Marvel Comics character of the same name, produced by Marvel Studios and distributed by Paramount Pictures. It is the first film in the Marvel Cinematic Universe (MCU). The film was directed by Jon Favreau, with a screenplay by the writing teams of Mark Fergus ...</p>
	</div>
	<div class="list-item">
		<h4>The Incredible Hulk</h4>
		<p>The Incredible Hulk is a 2008 American superhero film based on the Marvel Comics character the Hulk, produced by Marvel Studios and distributed by Universal Pictures. It is the second film in the Marvel Cinematic Universe (MCU). The film was directed by Louis Leterrier, with a screenplay by Zak Penn. It stars Edward ...</p>
	</div>
	<div class="list-item">
		<h4>Iron Man 2</h4>
		<p>Iron Man 2 is a 2010 American superhero film based on the Marvel Comics character Iron Man, produced by Marvel Studios and distributed by Paramount Pictures. It is the sequel to 2008's Iron Man, and is the third film in the Marvel Cinematic Universe (MCU). Directed by Jon Favreau and written by Justin Theroux, the film ...</p>
	</div>
    <div class="list-item">
		<h4>Iron Man</h4>
		<p>Iron Man is a 2008 American superhero film based on the Marvel Comics character of the same name, produced by Marvel Studios and distributed by Paramount Pictures. It is the first film in the Marvel Cinematic Universe (MCU). The film was directed by Jon Favreau, with a screenplay by the writing teams of Mark Fergus ...</p>
	</div>
	<div class="list-item">
		<h4>The Incredible Hulk</h4>
		<p>The Incredible Hulk is a 2008 American superhero film based on the Marvel Comics character the Hulk, produced by Marvel Studios and distributed by Universal Pictures. It is the second film in the Marvel Cinematic Universe (MCU). The film was directed by Louis Leterrier, with a screenplay by Zak Penn. It stars Edward ...</p>
	</div>
	<div class="list-item">
		<h4>Iron Man 2</h4>
		<p>Iron Man 2 is a 2010 American superhero film based on the Marvel Comics character Iron Man, produced by Marvel Studios and distributed by Paramount Pictures. It is the sequel to 2008's Iron Man, and is the third film in the Marvel Cinematic Universe (MCU). Directed by Jon Favreau and written by Justin Theroux, the film ...</p>
	</div>
    <div class="list-item">
		<h4>Iron Man</h4>
		<p>Iron Man is a 2008 American superhero film based on the Marvel Comics character of the same name, produced by Marvel Studios and distributed by Paramount Pictures. It is the first film in the Marvel Cinematic Universe (MCU). The film was directed by Jon Favreau, with a screenplay by the writing teams of Mark Fergus ...</p>
	</div>
	<div class="list-item">
		<h4>The Incredible Hulk</h4>
		<p>The Incredible Hulk is a 2008 American superhero film based on the Marvel Comics character the Hulk, produced by Marvel Studios and distributed by Universal Pictures. It is the second film in the Marvel Cinematic Universe (MCU). The film was directed by Louis Leterrier, with a screenplay by Zak Penn. It stars Edward ...</p>
	</div>
	<div class="list-item">
		<h4>Iron Man 2</h4>
		<p>Iron Man 2 is a 2010 American superhero film based on the Marvel Comics character Iron Man, produced by Marvel Studios and distributed by Paramount Pictures. It is the sequel to 2008's Iron Man, and is the third film in the Marvel Cinematic Universe (MCU). Directed by Jon Favreau and written by Justin Theroux, the film ...</p>
	</div>
    <div class="list-item">
		<h4>Iron Man</h4>
		<p>Iron Man is a 2008 American superhero film based on the Marvel Comics character of the same name, produced by Marvel Studios and distributed by Paramount Pictures. It is the first film in the Marvel Cinematic Universe (MCU). The film was directed by Jon Favreau, with a screenplay by the writing teams of Mark Fergus ...</p>
	</div>
	<div class="list-item">
		<h4>The Incredible Hulk</h4>
		<p>The Incredible Hulk is a 2008 American superhero film based on the Marvel Comics character the Hulk, produced by Marvel Studios and distributed by Universal Pictures. It is the second film in the Marvel Cinematic Universe (MCU). The film was directed by Louis Leterrier, with a screenplay by Zak Penn. It stars Edward ...</p>
	</div>
	<div class="list-item">
		<h4>Iron Man 2</h4>
		<p>Iron Man 2 is a 2010 American superhero film based on the Marvel Comics character Iron Man, produced by Marvel Studios and distributed by Paramount Pictures. It is the sequel to 2008's Iron Man, and is the third film in the Marvel Cinematic Universe (MCU). Directed by Jon Favreau and written by Justin Theroux, the film ...</p>
	</div>
</div>

<div id="pagination-container"></div>
</body>
    <script>
        $(document).ready(function () {
            var items = $(".list-wrapper .list-item");
            var numItems = items.length;
            var perPage = 4;

            items.slice(perPage).hide();

            $('#pagination-container').pagination({
                items: numItems,
                itemsOnPage: perPage,
                displayedPages : 3,
                edges: 1,
                prevText: "&laquo;",
                nextText: "&raquo;",
                onPageClick: function (pageNumber) {
                    var showFrom = perPage * (pageNumber - 1);
                    var showTo = showFrom + perPage;
                    items.hide().slice(showFrom, showTo).show();
                }
            });
        });
    </script>
</html>