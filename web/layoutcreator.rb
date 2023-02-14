class LayoutCreator
  def self.layout()
  return '
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
      crossorigin="anonymous">
      <style>
      .btn-main{
        border: 2px solid #FF9900;
        border-radius: 10px;
        background-color: white;
      }

      .btn-main:hover{
        background-color: #FF9900;
        color: white;
      }

      body{
        background-color: #ffedd3;
      }


      .btn-line{
        background-color: transparent;
        color: black;
      }

      .btn-line:hover{
        color: #FF9900;
      }

      .entry{
  background-color: white;
  border-radius: 10px;
}

.btn-entry-dropdown{
  border-radius: 10px;
  background-color: #FF9900;
  color: white;
}

.btn-entry{
  border-bottom-left-radius: 0;
  border-top-left-radius: 0;
  background-color: #FF9900;
  border-top-right-radius: 10px;
  border-bottom-right-radius: 10px;
  color: white;
}

@media (max-width: 960px) {
  .btn-entry{
    border-top-right-radius: 0px !important;
    border-bottom-left-radius: 10px !important;

  }
}

.btn-entry:hover{
  background-color: #9a5c00;
  color: white;
}

.btn-line{
  background-color: #FF9900;
  color: white;
  border-radius: 10px;
  border: none;
}
.btn-line:hover{
  background-color: white;
  color: #FF9900;
  border-radius: 10px;
  border: none;
}

.btn-clicked{
  background-color: #9a5c00;
}


      </style>

    <title>Search Bitcoin</title>
  </head>

    <header>
      <h1 class="display-3 text-center my-4">Get insane visualisations from Bitcoin!</h1>
    </header>



      <div class="container p-0 my-3">' +
      yield +
       '
       <form action="/add" method="get">
       <button class="btn btn-line h-100 btn-block mt-4 col-md-6 offset-md-3"> Add another Line</button>
       </form>
        </div>

        <div class="row my-3 mx-5">
          <div class="col-md-4 offset-md-4">
            <button class="btn btn-main btn-block" data-toggle="modal" data-target="#myModal">How it works?</button>
          </div>
        </div>









      <!-- MODAL -->
      <div class="modal" id="myModal">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">How it works?</h5>
              <button class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
              <h5>Are you trying to create visualisations of Bitcoin data?</h5>
              <p>To create a visualisation, select the type of data you want to visualise from the dropdown. After that, click on "Add to chart" to see the chart. Feel free to add as many lines as you wish so you can make comparisons </p>
            </div>
            <div class="modal-footer">
              <button class="btn btn-main" data-dismiss="modal">Close</button>
            </div>
          </div>
        </div>
      </div>

      <br>
      <br>

      <script>
        entrybuttons = document.getElementsByClassName("btn-entry");
        for (let i = 0; i < entrybuttons.length; i++) {
          let button = entrybuttons[i]
          button.addEventListener("click", (event) => {
          button.disabled = true;
          button.classList.add("btn-clicked");
        })
        }

      </script>

  <body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
      crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
      crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
      crossorigin="anonymous"></script>
  </body>

  </html>
  '
  end
end
