<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class ApiController extends Controller
{
 public function searchByName(Request $request)
{
    $name = "Turner Mia";

    $response = Http::timeout(15)->get('https://bit.ly/48ejMhW');
    $data = $response->json(); 

    $dataLines = explode("\n", $data['DATA']);
    $result = [];

    foreach ($dataLines as $line) {
        $values = explode("|", $line);
		//print_r ($values);

        if (count($values) == 3) {
            if ($values[0] == $name) {
                $rowData = [
                    'NAMA' => $values[0],
                    'NIM' => $values[1],
                    'YMD' => $values[2]
                ];

                $result[] = $rowData;
            }else if ($values[1] == $name) {
                $rowData = [
                    'NAMA' => $values[0],
                    'NIM' => $values[1],
                    'YMD' => $values[2]
                ];

                $result[] = $rowData;
            }else if ($values[2] == $name) {
                $rowData = [
                    'NAMA' => $values[0],
                    'NIM' => $values[1],
                    'YMD' => $values[2]
                ];

                $result[] = $rowData;
            }
        }
    }

    return view('search-by-name')->with('result', $result);
}


    public function searchByNim(Request $request)
{
    $name = "9352078461";

    $response = Http::timeout(15)->get('https://bit.ly/48ejMhW');
    $data = $response->json(); 

    $dataLines = explode("\n", $data['DATA']);
    $result = [];

    foreach ($dataLines as $line) {
        $values = explode("|", $line);
		//print_r ($values);

        if (count($values) == 3) {
            if ($values[0] == $name) {
                $rowData = [
                    'NAMA' => $values[0],
                    'NIM' => $values[1],
                    'YMD' => $values[2]
                ];

                $result[] = $rowData;
            }else if ($values[1] == $name) {
                $rowData = [
                    'NAMA' => $values[0],
                    'NIM' => $values[1],
                    'YMD' => $values[2]
                ];

                $result[] = $rowData;
            }else if ($values[2] == $name) {
                $rowData = [
                    'NAMA' => $values[0],
                    'NIM' => $values[1],
                    'YMD' => $values[2]
                ];

                $result[] = $rowData;
            }
        }
    }

    return view('search-by-nim')->with('result', $result);
}

  public function searchByMyd(Request $request)
{
    $name = "20230405";

    $response = Http::timeout(15)->get('https://bit.ly/48ejMhW');
    $data = $response->json(); 

    $dataLines = explode("\n", $data['DATA']);
    $result = [];

    foreach ($dataLines as $line) {
        $values = explode("|", $line);
		//print_r ($values);

        if (count($values) == 3) {
            if ($values[0] == $name) {
                $rowData = [
                    'NAMA' => $values[0],
                    'NIM' => $values[1],
                    'YMD' => $values[2]
                ];

                $result[] = $rowData;
            }else if ($values[1] == $name) {
                $rowData = [
                    'NAMA' => $values[0],
                    'NIM' => $values[1],
                    'YMD' => $values[2]
                ];

                $result[] = $rowData;
            }else if ($values[2] == $name) {
                $rowData = [
                    'NAMA' => $values[0],
                    'NIM' => $values[1],
                    'YMD' => $values[2]
                ];

                $result[] = $rowData;
            }
        }
    }

    return view('search-by-myd')->with('result', $result);
}
}
