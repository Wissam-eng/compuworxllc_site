<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="/index.css" />
    <style>
      .contentContainer {
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 15px;
      }
      .imgContainer {
        display: flex;
        justify-content: center;
        align-items: center;
      }
      .mainImg {
        width: 90%;
        height: 500px;
        object-fit: cover;
      }
      .webTitle {
        font-size: 20px;
        font-weight: bold;
      }
      .callContainer {
        display: flex;
        align-items: center;
        gap: 8px;
      }
      .call {
        background-color: red;
        color: white !important;
        font-weight: bold;
        width: 100px;
        padding: 7px;
        display: flex;
        justify-content: center;
        align-items: center;
        text-decoration: none;
        border-radius: 8px;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <div class="contentContainer">
        <div class="imgContainer">
          <img class="mainImg" loading="lazy" alt = "my-img" src ={{ asset('soon.jpg') }} />
        </div>
        <p class="webTitle">website is under construction</p>
        <div class="callContainer">
          <a
            class="call"
            href="https://wa.me/+201097225751"
            target="_blank"
            rel="noopener noreferrer"
            >تواصل معنا</a
          >
          <p>للاستفسار يرجي التواصل مع الادارة</p>
        </div>
      </div>
    </div>
  </body>
</html>
