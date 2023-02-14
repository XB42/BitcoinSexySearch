class EntryCreator
  def self.create_entry
    return '<div class="entry row p-0 my-3">
    <div class="col-md-4 p-0">
      <div class="dropdown my-5 mx-3 d-block">
        <button class="btn btn-entry-dropdown dropdown-toggle btn-block" type="button" data-toggle="dropdown" >Type of Data</button>
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
    </div>'
  end
end
