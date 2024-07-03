<?php
/**
 * php-gedcom.
 *
 * php-gedcom is a library for parsing, manipulating, importing and exporting
 * GEDCOM 5.5 files in PHP 5.3+.
 *
 * @author          Kristopher Wilson <kristopherwilson@gmail.com>
 * @copyright       Copyright (c) 2010-2013, Kristopher Wilson
 * @license         MIT
 *
 * @link            http://github.com/mrkrstphr/php-gedcom
 */

namespace Gedcom\Record;

/**
 * Class Chan.
 */
class Birt extends \Gedcom\Record
{
    private array $months = [
        'JAN' => '01', 'FEB' => '02', 'MAR' => '03', 'APR' => '04', 'MAY' => '05', 'JUN' => '06',
        'JUL' => '07', 'AUG' => '08', 'SEP' => '09', 'OCT' => '10', 'NOV' => '11', 'DEC' => '12',
    ];

    public $date;

    public $month;

    public $year;

    public $dateFormatted;

    public $dati;

    public $plac;

    public function setDate($date)
    {
        $this->date = $date;
        if ($this->getDay()) {
            $this->dateFormatted = $this->getYear().'-'.$this->getMonth().'-'.substr("0{$this->getDay()}", -2);
        } else {
            $this->month = $this->getMonth();
            $this->year = $this->getYear();
        }
    }

    public function getDateFormatted()
    {
        return $this->dateFormatted;
    }

    public function getDate()
    {
        return $this->date;
    }

    public function setDati($dati)
    {
        $this->dati = $dati;
    }

    public function getDati()
    {
        return $this->dati;
    }

    public function setPlac($plac)
    {
        $this->plac = $plac;
    }

    public function getPlac()
    {
        return $this->plac;
    }

    public function getDay()
    {
        $record = explode(' ', (string) $this->date);
        if (isset($record[0]) && $record[0] !== '') {
            if ($this->isPrefix($record[0])) {
                unset($record[0]);
            }
            if ($record !== []) {
                $day = (int) reset($record);
                if ($day >= 1 && $day <= 31) {
                    return $day;
                }
            }
        }

        return null;
    }

    public function getMonth()
    {
        $record = explode(' ', (string) $this->date);
        if ($this->isPrefix($record[0])) {
            unset($record[0]);
        }
        foreach ($record as $part) {
            if (isset($this->months[trim($part)])) {
                return $this->months[trim($part)];
            }
        }

        return null;
    }

    public function getYear()
    {
        $record = explode(' ', (string) $this->date);
        if ($this->isPrefix($record[0])) {
            unset($record[0]);
        }

        return (int) end($record);
    }

    private function isPrefix($datePart)
    {
        return in_array($datePart, ['FROM', 'TO', 'BEF', 'AFT', 'BET', 'AND', 'ABT', 'EST', 'CAL', 'INT']);
    }
}
