@extends('frontend.layouts.master')
@section('content')
  @include('frontend.layouts.topbar.breadcrumbs')
  <!-- section start -->
  <section class="section-b-space blog-page ratio2_3">
    <div class="container">
      <div class="row">
        <div class="col-xl-9 col-lg-8 col-md-7">
          @forelse ($blogs as $blog)
            <div class="row blog-media">
              <div class="col-xl-6">
                <div class="blog-left">
                  <a href="{{ route('e-commerce.blogDetails',['blog' => $blog->id]) }}">
                    <img src="{{ asset('uploads/blogs/'.$blog->id.'/'.$blog->image) }}" class="img-fluid blur-up lazyload bg-img" alt=""></a>
                </div>
              </div>
              <div class="col-xl-6">
                <div class="blog-right">
                  <div>
                      <a href="{{ route('e-commerce.blogDetails',['blog' => $blog->id]) }}">
                      <h4>{{ $blog['title_'.$lang] }}</h4>
                    </a>
                    {{-- <ul class="post-social">
                      <li>Posted By : Admin Admin</li>
                      <li><i class="fa fa-heart"></i> 5 Hits</li>
                      <li><i class="fa fa-comments"></i> 10 Comment</li>
                    </ul> --}}
                    <p>{!! $blog['description_'.$lang] !!}</p>
                  </div>
                </div>
              </div>
            </div>
          @empty
            <div class="col-md-12">
              <h2>{{trans('common.nothingToView')}}</h2>
            </div>
          @endforelse


        </div>
{{--
        <div class="col-xl-3 col-lg-4 col-md-5">
          <div class="blog-sidebar">
            <div class="theme-card">
              <h4>Recent Blog</h4>
              <ul class="recent-blog">
                <li>
                  <div class="media"> <img class="img-fluid blur-up lazyload" src="{{ asset('frontend/assets/images/blog/1.jpg') }}"
                      alt="Generic placeholder image">
                    <div class="media-body align-self-center">
                      <h6>25 Dec 2018</h6>
                      <p>0 hits</p>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="media"> <img class="img-fluid blur-up lazyload" src="{{asset('frontend/assets/images/blog/2.jpg')}}"
                      alt="Generic placeholder image">
                    <div class="media-body align-self-center">
                      <h6>25 Dec 2018</h6>
                      <p>0 hits</p>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="media"> <img class="img-fluid blur-up lazyload" src="{{asset('frontend/assets/images/blog/3.jpg')}}"
                      alt="Generic placeholder image">
                    <div class="media-body align-self-center">
                      <h6>25 Dec 2018</h6>
                      <p>0 hits</p>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="media"> <img class="img-fluid blur-up lazyload" src="{{asset('frontend/assets/images/blog/4.jpg')}}"
                      alt="Generic placeholder image">
                    <div class="media-body align-self-center">
                      <h6>25 Dec 2018</h6>
                      <p>0 hits</p>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="media"> <img class="img-fluid blur-up lazyload" src="{{asset('frontend/assets/images/blog/5.jpg')}}"
                      alt="Generic placeholder image">
                    <div class="media-body align-self-center">
                      <h6>25 Dec 2018</h6>
                      <p>0 hits</p>
                    </div>
                  </div>
                </li>
              </ul>
            </div>


            <div class="theme-card">
              <h4>Popular Blog</h4>
              <ul class="popular-blog">
                <li>
                  <div class="media">
                    <div class="blog-date"><span>03 </span><span>may</span></div>
                    <div class="media-body align-self-center">
                      <h6>Injected humour the like</h6>
                      <p>0 hits</p>
                    </div>
                  </div>
                  <p>it look like readable English. Many desktop publishing text.</p>
                </li>
                <li>
                  <div class="media">
                    <div class="blog-date"><span>03 </span><span>may</span></div>
                    <div class="media-body align-self-center">
                      <h6>Injected humour the like</h6>
                      <p>0 hits</p>
                    </div>
                  </div>
                  <p>it look like readable English. Many desktop publishing text.</p>
                </li>
                <li>
                  <div class="media">
                    <div class="blog-date"><span>03 </span><span>may</span></div>
                    <div class="media-body align-self-center">
                      <h6>Injected humour the like</h6>
                      <p>0 hits</p>
                    </div>
                  </div>
                  <p>it look like readable English. Many desktop publishing text.</p>
                </li>
                <li>
                  <div class="media">
                    <div class="blog-date"><span>03 </span><span>may</span></div>
                    <div class="media-body align-self-center">
                      <h6>Injected humour the like</h6>
                      <p>0 hits</p>
                    </div>
                  </div>
                  <p>it look like readable English. Many desktop publishing text.</p>
                </li>
              </ul>
            </div>


          </div>
        </div> --}}

      </div>
    </div>
  </section>
  <!-- Section ends -->
@stop
