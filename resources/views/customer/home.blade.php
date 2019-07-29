@extends("layouts.app")
@php
	$sl = 1;
@endphp
@section("content")
<div class="container">
	<div class="row">
		
		<div class="col-md-12">
			
			<div class="card">
				<div class="card-header">
					Customer data
					<div class="pull-right">
						<button class="btn btn-primary" data-toggle="modal" data-target="#addCustomer">Add Customer</button>
					</div>
				</div>

				<div class="form-group m-4">
					<input type="search" class="form-control" placeholder="Search Customer" id="livesearch" >
				</div>
				
				
				<div class="card-body table-responsive" id="showAllDataHere">
					<table class="table table-striped table-hover table-bordered">
						<thead>
							<th>Sl</th>
							<th>Name</th>
							<th>Phone</th>
							<th>Email</th>
							<th>District</th>
							<th>Registered Date</th>
							<th>Manage</th>
						</thead>
						<tbody>
							@foreach($data as $show)
							<tr>
								<td>{{ $sl++ }}</td>
								<td>{{ $show->name }}</td>
								<td>{{ $show->phone }}</td>
								<td>{{ $show->email }}</td>
								<td>{{ $show->district }}</td>
								<td>{{ date("d-m-Y", strtotime($show->created_at)) }}</td>
								<td>
									<a href="{{ url('view/customer/data') }}" data-id="{{ $show->id }}" id="view" class="btn btn-sm btn-success"><i class="fa fa-eye"></i></a>

									<a href="{{ url('edit/customer/data') }}" data-id="{{ $show->id }}" id="edit" class="btn btn-sm btn-primary"><i class="fa fa-edit"></i></a>

									<a onclick="return confirm('Are you sure to delete?')" href="{{ url('delete/customer/data') }}" data-id="{{ $show->id }}" id="delete" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></a>
								</td>
							</tr>
							@endforeach
						</tbody>
					</table>
						{!! $data->render() !!}
				</div>

			</div>
		</div>
	</div>
</div>
{{-- Add Customer --}}

<div id="getalldata" data-url="{{ url('get/customer/data') }}"></div>
<div id="getalldatabypagination" data-url="{{ url('get/customer/data/by/pagination') }}"></div>
<div id="search" data-url="{{ url('live/search/data') }}"></div>



<!-- Modal -->
<div class="modal fade" id="addCustomer" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
	<div class="modal-dialog" role="document">
		
		<form action="{{ url('add/customer/data') }}" method="POST" id="addcustomerform">
			@csrf
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Add Customer Data</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1"><i class="fa fa-user"></i></span>
						</div>
						<input type="text" class="form-control" placeholder="Name" name="name" id="iname">
					</div>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1"><i class="fa fa-phone"></i></span>
						</div>
						<input type="text" class="form-control" placeholder="Phone" name="phone" id="iphone">
					</div>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1"><i class="fa fa-envelope"></i></span>
						</div>
						<input type="text" class="form-control" placeholder="Email" name="email" id="iemail">
					</div>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1"><i class="fa fa-map-marker"></i></span>
						</div>
						<input type="text" class="form-control" placeholder="District" name="district" id="idsitrict">
					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</form>
	</div>
</div>
{{-- Add Customer --}}



<!-- Modal -->
<div class="modal fade" id="ViewCustomer" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
	<div class="modal-dialog" role="document">
		
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="customername"></h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<input type="hidden" name="id" id="vcustomerid">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fa fa-user"></i></span>
						</div>
						<input type="text" class="form-control" id="vname">
					</div>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fa fa-phone"></i></span>
						</div>
						<input type="text" class="form-control" id="vphone">
					</div>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fa fa-envelope"></i></span>
						</div>
						<input type="text" class="form-control" id="vemail">
					</div>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fa fa-map-marker"></i></span>
						</div>
						<input type="text" class="form-control" id="vdistrict">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				</div>
			</div>
	</div>
</div>
{{-- Add Customer --}}




<!-- Update Customer -->
<div class="modal fade" id="UpdateCustomer" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<form action="{{ url('update/customer/data') }}" method="POST" id="updatecustomerform">
			@csrf
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="updatecustomertitle"></h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<input type="hidden" name="id" id="customerid">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1"><i class="fa fa-user"></i></span>
						</div>
						<input type="text" id="cname" class="form-control" placeholder="Name" name="name">
					</div>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1"><i class="fa fa-phone"></i></span>
						</div>
						<input type="text" id="cphone" class="form-control" placeholder="Phone" name="phone">
					</div>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1"><i class="fa fa-envelope"></i></span>
						</div>
						<input type="text" id="cemail" class="form-control" placeholder="Email" name="email">
					</div>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="basic-addon1"><i class="fa fa-map-marker"></i></span>
						</div>
						<input type="text" id="cdistrict" class="form-control" placeholder="District" name="district">
					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</form>
	</div>
</div>
{{-- Update Customer Customer --}}

@endsection