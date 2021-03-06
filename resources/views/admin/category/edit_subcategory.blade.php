@extends('admin.master')

@section('title',"EDIT-SUB-CATEGORY")

@section('dashboardContent')
    <div class="sl-mainpanel">
      <div class="sl-pagebody">
        <div class="sl-page-title">
          <!-- <h5>Edit-Category Table</h5> -->
        </div>
        <div class="card pd-20 pd-sm-40">
         
<!-- Edit-category form -->

    <span>
      <a href="{{ route('admin.sub.categories') }}" class="btn btn-sm btn-info" style="float:right;">All Sub-Category</a>
      
    </span>
      @if ($errors->any())
          <div class="alert alert-danger">
              <ul>
                  @foreach ($errors->all() as $error)
                      <li>{{ $error }}</li>
                  @endforeach
              </ul>
          </div>
      @endif
    <div style="padding-left: 200px;" class="col-md-9 ">
      <form method="post" action="{{ URL('admin/update/subcategory/'.$subcat->id) }}">
        @csrf
      <div class="modal-body">
        <!-- Bootstrap Form -->
        
            <div class="form-group">
              <label for="exampleInputEmail1">Sub-Category Name</label>
              <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="subcategory_name" value="{{ $subcat->subcategory_name }}">
            </div>

             <div class="form-group">
              <label for="exampleInputEmail1">Category Name</label>
              <select class="form-control" name="category_id">
                @foreach($category as $row)
                  <option value="{{ $row->id }}" 
                    <?php if ($row->id == $subcat->category_id) {
                      echo "selected";
                        } 
                    ?> >
                    
                    {{ $row->category_name }}

                  </option>
                @endforeach
              </select>
              <small id="emailHelp" class="form-text text-muted">Select Category</small>
            </div>
        
        <!-- End Bootstrap Form -->
        </div>


          <div style="padding:0px 0px 220px 190px;">
            <button style="width: 150px;" type="submit" class="btn btn-primary">Update</button>
          </div>
      </form>
    </div>
<!-- End Edit-category form -->


         
        </div>



@endsection