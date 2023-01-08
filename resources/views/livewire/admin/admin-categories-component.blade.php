<div>
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
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>類別名稱</th>
                                            <th>Action</th>
                                        </tr>
                                        <tbody>
                                            @foreach($categories as $category)
                                                <tr>
                                                    <td>{{ $category->id }}</td>
                                                    <td>{{ $category->name }}</td>
                                                    <td>
                                                        <a href="{{ route('admin.category.edit', ['category_id'=>$category->id])}}" class="text_info">修改</a>
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