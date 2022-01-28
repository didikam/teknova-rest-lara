<?php

namespace App\Http\Controllers;

use App\Models\Pegawai;
use Illuminate\Http\Request;
use App\DataTables\PegawaiDataTable;
use App\Http\Requests\PegawaiRequest;
use Symfony\Component\HttpFoundation\Response;
use Yajra\DataTables\Facades\DataTables;

class PegawaiController extends Controller
{
    public function index(Request $request)
    {
        return view('pages.pegawai')->with([
            'title' => 'Pegawai'
        ]);
    }

    public function getPegawai(Request $request)
    {
        return DataTables::of(Pegawai::query())
            // ->addColumn('id', function ($data) {
            //     return $data->id;
            // })
            ->make(true);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(PegawaiRequest $request)
    {
        $data = $request->all();
        if (isset($request->id)) {
            $item = Pegawai::findOrFail($request->id);
            $query = $item->update($data);
        } else {
            $query = Pegawai::create($data);
        }
        if ($query) {
            return response([
                'message' => 'Berhasil',
            ], Response::HTTP_CREATED);
        } else {
            return response([
                'message' => 'Gagal',
            ], Response::HTTP_UNPROCESSABLE_ENTITY);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request)
    {
        $id = $request->id;
        $item = Pegawai::findOrFail($id);
        if ($item) {
            return response([
                'message' => 'Berhasil ambil data',
                'data' => $item
            ], Response::HTTP_OK);
        } else {
            return response([
                'message' => 'Gagal ambil data',
            ], Response::HTTP_BAD_REQUEST);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $data = $request->all();
        $item = Pegawai::findOrFail($request->id);
        if ($item) {
            $item->update($data);
            if ($item) {
                return response([
                    'message' => 'Berhasil ubah data',
                    'data' => $item
                ], Response::HTTP_OK);
            } else {
                return response([
                    'message' => 'Gagal ubah data',
                ], Response::HTTP_BAD_REQUEST);
            }
        } else {
            return response([
                'message' => 'Data tidak ditemukan',
            ], Response::HTTP_BAD_REQUEST);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $id = $request->id;
        $item = Pegawai::findOrFail($id);
        $query = $item->delete();
        if ($query) {
            return response([
                'message' => 'Berhasil',
            ], Response::HTTP_OK);
        } else {
            return response([
                'message' => 'Gagal',
            ], Response::HTTP_UNPROCESSABLE_ENTITY);
        }
    }
}
