<div>
    <head>
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <style>
        nav svg{
            height: 20px;
        }

        nav .hidden{
            display: block;
        }
    </style>
    <main class="main">
        <div class="page-header breadcrumb-wrap">
            <div class="container">
                <div class="breadcrumb">
                    <a href="/" rel="nofollow">首頁</a>
                    <span></span> 產品類別
                </div>
            </div>
        </div>
        <section class="mt-50 mb-50">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <div class="row">
                                    <div class="col-md-6" style="display: flex;align-items: center;">
                                        所有類別
                                    </div>
                                    <div class="col-md-6">
                                        <a href="{{ route('admin.category.add') }}" class="btn btn-success float-end">新增產品類別</a>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                @if(Session::has('message'))
                                <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                                @endif
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>類別名稱</th>
                                            <th>動作</th>
                                        </tr>
                                        <tbody>
                                            @php
                                            	$i = ($categories->currentPage()-1)*$categories->perPage();
                                            @endphp
                                            @foreach($categories as $category)
                                                <tr>
                                                    <td>{{ ++$i }}</td>
                                                    <td>{{ $category->name }}</td>
                                                    <td>
                                                        <a href="{{ route('admin.category.edit', ['category_id'=>$category->id])}}" ><i class="fa fa-edit" style="font-size:24px; color:blue;"></i></a>
                                                        <a href="#" class="text_danger" wire:click.prevent="deleteCategory({{$category->id}})" style="margin-left:20px;"><i class="fa fa-trash" style="font-size:24px; color:red;"></i></a>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </thead>
                                </table>
                                <div>
                                    {{ $categories->links('vendor.pagination.bootstrap-4') }}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </scation>
    </main>
</div>

<div class="modal" id="deleteConfirmation">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body pb-30 pt-30">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h4 class="pb-3">你確定要刪除嗎?</h4>
                        <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#deleteConfirmation">取消</button>
                        <button type="button" class="btn btn-danger">刪除</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@push('scripts')
    <script type="text/javascript">
        function deleteConfirmation(id){
            @this.set('category_id',id);
            $('#deleteConfirmation').modal('show');
        }
    </script>
@endpush
