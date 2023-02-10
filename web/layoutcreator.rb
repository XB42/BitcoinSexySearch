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
      <link rel="stylesheet" href="web/css/style.css">

    <title>Search Bitcoin</title>
  </head>

    <header>
      <h1 class="display-3 text-center my-4">Get insane visualisations from Bitcoin!</h1>
    </header>



      <div class="container p-0 my-3">
        <div class="entry row p-0">
          <div class="col-md-4 p-0">
            <div class="dropdown my-5 mx-3 d-block">
              <button class="btn btn-entry-dropdown dropdown-toggle btn-block" type="button" data-toggle="dropdown">Type of Data</button>
              <div class="dropdown-menu w-100">
                  <a class="dropdown-item" href="#">Block Height</a>
                  <a class="dropdown-item" href="#">Transaction Count</a>
                  <a class="dropdown-item" href="#">Fee</a>
                  <a class="dropdown-item" href="#">Difficulty</a>
                  <a class="dropdown-item" href="#">Reward</a>
                  <a class="dropdown-item" href="#">Size</a>
                  <a class="dropdown-item" href="#">Time</a>
              </div>
            </div>
          </div>
            <div class= "col-md-2 offset-md-6 p-0">
              <button class="btn btn-entry h-100 btn-block btn-right">Add to chart</button>
            </div>
          </div>


          <button class="btn btn-line h-100 btn-block mt-4 col-md-6 offset-md-3"> Add another Line</button>
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
