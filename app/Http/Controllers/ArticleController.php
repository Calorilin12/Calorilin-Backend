<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Gate;

class ArticleController extends Controller
{
    public function create_article(Request $request)
    {
        if (Gate::allows('admin-only')) {
            $file = $request->file('article_image');
            $nama_file = $file->getClientOriginalName();
            $tujuan_upload = 'article-images';
            $file->move($tujuan_upload, $nama_file);

            DB::table('articles')->insert([
                'title' => $request->title,
                'content' => $request->content,
                'writer' => Auth::user()->name,
                'article_image' => $nama_file,
                'created_at' => now(),
            ]);

            return response()->json(["message" => "Article Created"], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }

    public function article_all(){
        $articles = DB::table('articles')->get();

        return response()->json($articles, 200);
    }

    public function article_delete($id)
    {
        if (Gate::allows('admin-only')) {
            
            $article = DB::table('articles')->where('id', $id)->first();
            File::delete('article-images/' . $article->article_image);

            DB::table('articles')->where('id', $id)->delete();

            return response()->json(["message" => "Article Deleted"], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }

    public function article_update($id, Request $request){
        if (Gate::allows('admin-only')){
            $article = DB::table('articles')->where('id', $id)->first();

            if ($request->file('article_image') != null){
                File::delete('article-images/' . $article->article_image);
                $file = $request->file('article_imageimage');
                $nama_file = $file->getClientOriginalName();
                $tujuan_upload = 'article-images';
                $file->move($tujuan_upload, $nama_file);
            } else {
                $nama_file = $article->article_image;
            }

            DB::table('articles')->where('id', $id)->update([
                'title' => $request->title,
                'content' => $request->content,
                'article_image' => $nama_file,
            ]);

            return response()->json(["message" => "Article Updated"], 201);
        }
        return response()->json(["message" => "Anda tidak memiliki akses"], 403);
    }

    public function article_show($id){
        $article = DB::table('articles')->where('id', $id)->first();

        return response()->json($article, 200);
    }
}
