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
                    <span></span> 首頁Banner
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
                                        首頁Banner
                                    </div>
                                    <div class="col-md-6">
                                        <a href="{{ route('admin.home.slide.add') }}" class="btn btn-success float-end">新增首頁Banner</a>
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
                                            <th>Banner圖片</th>
                                            <th>標題一</th>
                                            <th>標題二</th>
                                            <th>標題三</th>
                                            <th>連結</th>
                                            <th>狀態</th>
                                            <th>動作</th>
                                        </tr>
                                        <tbody>
                                            @php
                                            	$i = 0;
                                            @endphp
                                            @foreach($slides as $slide)
                                                <tr>
                                                    <td>{{ ++$i }}</td>
                                                    <td><img src="{{asset('assets/imgs/slider')}}/{{ $slide->image }}" width="80"></td>
                                                    <td>{{ $slide->top_title }}</td>
                                                    <td>{{ $slide->title }}</td>
                                                    <td>{{ $slide->sub_title }}</td>
                                                    <td>{{ $slide->link }}</td>
                                                    <td>{{ $slide->status == 1 ? '開啟':'關閉'}}</td>
                                                    <td>
                                                        <a href="{{ route('admin.home.slide.edit', ['slide_id'=>$slide->id])}}" ><i class="fa fa-edit" style="font-size:24px; color:blue;"></i></a>
                                                        <a href="#" class="text_danger" wire:click.prevent="deleteslide({{$slide->id}})" style="margin-left:20px;"><i class="fa fa-trash" style="font-size:24px; color:red;"></i></a>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </thead>
                                </table>
                                <div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </scation>
    </main>
</div>
